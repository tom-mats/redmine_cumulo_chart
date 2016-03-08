require 'date'

module IncDecRecord
  class Hooks < Redmine::Hook::Listener
    def controller_issues_new_after_save(context={})
    end
    def controller_issues_edit_after_save(context={})
      c_journal = context[:issue].journals.select{|elem| elem.id == context[:journal].id}
      p c_journal[0].details
      today_data = DailyVariation.all.select { |elem| elem.date == Date.today && elem.priority == 1}
      today_data = [DailyVariation.create(date: Date.today, project: 1, priority: 1, count: 0)] if today.empty?
      today_data.each {|data|
        data.increment(:count)
        data.save
      }
    end
  end
end

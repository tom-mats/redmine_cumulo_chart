require 'date'

module IncDecRecord
  class Hooks < Redmine::Hook::Listener
    def controller_issues_new_after_save(context={})
    end
    def controller_issues_edit_after_save(context={})
      c_journal = context[:issue].journals.select{|elem| elem.id == context[:journal].id}
      p c_journal[0].details
      data = DailyVariation.where(project: 1)
      data = DailyVariation.create(date: Date.today, project: 1, priority: 1, count: 0) if today.empty?
      data.increment(:count)
      data.save
      data = TotalVariation.where(project: 1)
      data = TotalVariation.create(date: Date.today, project: 1, priority: 1, count: 0) if today.empty?
      data.increment(:count)
      data.save
      end
  end
end

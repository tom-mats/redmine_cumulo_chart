module IncDecRecord
  class Hooks < Redmine::Hook::Listener
    def controller_issues_new_after_save(context={})
    end
    def controller_issues_edit_after_save(context={})
      c_journal = context[:issue].journals.select{|elem| elem.id == context[:journal].id}
      p c_journal
    end
  end
end

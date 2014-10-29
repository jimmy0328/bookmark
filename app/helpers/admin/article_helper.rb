module Admin::ArticleHelper


  
  def load_editor(name)
     editType = ['CKedit','CodeMirror','Markdown']
     defualt_value = editType[0]

     ul_body = editType.each_with_index.map { |t,i| 
      if defualt_value == t
        checked = "checked"
      else
        checked = ""
      end
      custom_tag(t,i+1,name,checked) 
    }
     safe_join(ul_body)
  end

 private
  def custom_tag(str,index,name,checked)
    "<label class='radio-inline'><input type='radio' name='#{name}' id='#{str}' value='#{index}' #{checked} >#{str}</label>".html_safe
  end

end

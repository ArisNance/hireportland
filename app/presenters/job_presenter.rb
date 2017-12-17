class JobPresenter < Burgundy::Item
  def badge
    "#{modality}-badge.png"
  end

  def modality_name
    %w(Full-Time Part-Time Remote Contact)[Job.modalities[modality]]
  end

  def salary_label
    %w(
      N/A
      $20K\ -\ $38K
      $40K\ -\ $55K
      $60K\ -\ $85K
      $87K\ -\ $120K
      Hourly )[Job.salaries[salary]]
  end

  def contract_type_label
    %w(
      Not\ Specified
      CLT
      PJ)[Job.contract_types[contract_type]]
  end
end

//
//  DailyForecastTableViewCell.swift
//  WeatherApp
//
//  Created by Jefferson Machado on 30/04/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    static let identifier: String = "DailyForecast"
    
    private lazy var weekDayLabel: UILabel={
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TER"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12,weight: .semibold)
        return label
    }()

    private lazy var minTemperatureLabel: UILabel={
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "min 25°C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12,weight: .semibold)
        return label
    }()
    
    private lazy var maxTemperatureLabel: UILabel={
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "max 25°C"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12,weight: .semibold)
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "cloudIcon")
        return imageView
    }()
    
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [weekDayLabel, iconImageView, minTemperatureLabel, maxTemperatureLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 22, bottom: 22, trailing: 16)
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.spacing = 15
       return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
     setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupView(){
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)
        ])
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}

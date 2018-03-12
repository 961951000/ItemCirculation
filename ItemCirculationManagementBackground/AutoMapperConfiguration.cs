using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using ItemCirculation.Data.Models;
using ItemCirculationManagementBackground.ViewModels;

namespace ItemCirculationManagementBackground
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<CirculationRecordView, CirculationRecord>()
                    .ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.Id))
                    .ForMember(dest => dest.ItemUid, opt => opt.MapFrom(src => src.ItemUid))
                    .ForMember(dest => dest.StudentCardMacCode, opt => opt.MapFrom(src => src.CardMacCode))
                    .ForMember(dest => dest.ActionId, opt => opt.MapFrom(src => src.ActionId))
                    .ForMember(dest => dest.ActionTime, opt => opt.MapFrom(src => src.ActionTime))
                    .ForMember(dest => dest.Comment, opt => opt.MapFrom(src => src.Comment));
            });
        }
    }
}

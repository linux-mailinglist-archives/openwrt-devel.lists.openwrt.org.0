Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564B1CC3ED
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 May 2020 21:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJuCHJqP8WnzxN68/KnrIcU/m7fBnqeO2KuJLz9yH54=; b=u09k4X8vlySevK
	o0NmKv3SeLqzJn58d4ch/PI1+/Dy6gYEOTAMmHUkeaAtTmwObuANGRzj/Jl22fULMjvNOZoilM7bz
	lLCWBWhGTBHK8OaRF9pYAtJQ1Il75YYlEexPDfx1VAahuitdOhYfX1F5iFHkvyJIsFLXN9wq6Y3w3
	FcILFXWoIP0aSrSqFXM1D+ZCnoJvXDZsShoqkFUrmlL7YjhMtkVc+codXZFQiqae4JemkrgkzItYp
	oYny+dBoHJB1EG1qRM4y7l20hZYg3Ah7YWU/EiIwylWdjtmcjyk+y/q+IRr6sXQ7+0Yqq7Th7fwnr
	F/xQ4b+BJbGmYNO8TP/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUp7-0006lh-2S; Sat, 09 May 2020 19:07:45 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUp0-0006lJ-Ke
 for openwrt-devel@lists.openwrt.org; Sat, 09 May 2020 19:07:40 +0000
Received: by mail-qk1-x741.google.com with SMTP id s186so3690066qkd.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 May 2020 12:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Eqz1D/6zVsBsUpJQLhzGF8/k8K6dvaSoaaCNQYjVCPQ=;
 b=Vj+sxCn3yZoOgSzjsWpjQvY3eIZ68CxUK+8Ztv4fmZTcsxdc5U29iS8L9wUEDyt9Un
 5ybH+FWtYeCbUBl6HFPsfM472/ncL+3QSk8PT3tp5DQUJ3HYMbVDnPSWJw88QCLfXJIs
 89dmw/iseeFoobrzZX3XZxuR5I08n9ODN3WAlz/aunE/COMgamogIQj+s6OQHeJDSGzc
 ulV6GSgu7M0QdXARjvGohOCWt8xDZuffmQblMbWQrfa7dvJWLBNuM2fYQveu7T3Ljipr
 CHC7sCbAWPb1TZoYIk8ABJoNQ6vCVMjwzQ5ueuHWXKc25JdL1ivLBnybd9wn8+60PTGk
 q3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Eqz1D/6zVsBsUpJQLhzGF8/k8K6dvaSoaaCNQYjVCPQ=;
 b=NXmQRzo0X0c70phT2oQViFRF3X7NaOVWYzYgSO2/Po6hmLStwMhzd4BMeJ3DnQE2ab
 9wcFcyOldaN3Ie1OY4HzlrX7RG3Y5F/S9j096IyHKAhCm+raTK+aS2+Lyf9LCvQVBDvj
 m61jUUjMtel9icEbLaPE+KxqtQYm40qeG6OWDUEpRlFDtnIVOiR6ZolnACwUXE+DDQNb
 M4sTWFlNy8AQgmqpQFmS6Ae8TYx9gTPdRlkn1WTyWfH9auaQKzZFhCGaIQh+tXoXgDck
 WZ51QGfL0NzwuyTJaxSe0iooC701a1bI1e5gCFKzxFMu//q7ADrSx/50kccTK1AKS/6T
 4uSg==
X-Gm-Message-State: AGi0PuZxT62TWKwD3pu6SOUF0LcFnbuO7X3wPrb6wnDrzokg/qjzD05c
 zxlrS1cdCKMfxIxtjoDxYx+F0/BzctKxrhj9U9c=
X-Google-Smtp-Source: APiQypJ0SpojCXTJZqSPOrMAPjV0BKVq5RnTcwy4gZx83LhfvrDimLL1lTIkchMhBvrRFYPcso3UWxjHbucQOIehwVw=
X-Received: by 2002:a37:6843:: with SMTP id d64mr8397043qkc.24.1589051256863; 
 Sat, 09 May 2020 12:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200428074054.2091-1-pespin@espeweb.net>
 <20200503174242.6466-1-pespin@espeweb.net>
In-Reply-To: <20200503174242.6466-1-pespin@espeweb.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 9 May 2020 21:07:25 +0200
Message-ID: <CAJLcKsG6F20q+RHpQpM5ZC-o-8qGROpr1FkbvgUoDw-+zSiJ9w@mail.gmail.com>
To: Pau Espin Pedrol <pespin@espeweb.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_120738_681285_4DE1C0CF 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH netifd] vlandev: support setting
 ingress/egress QoS mappings
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Pedro <pedrowrt@cas.cat>, openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Pau Espin Pedrol <pespin.shar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

As a general remark it's better to use vlist_simple_tree and
vlist_simple_node for the list implementation; for the reasons see
below

On Sun, May 3, 2020 at 7:43 PM Pau Espin Pedrol <pespin@espeweb.net> wrote:
>
> From: Pau Espin Pedrol <pespin.shar@gmail.com>
>
> It allows setting mappings for instance this way:
> """
> config device
>   option name 'vlan41'
>   option type '8021q'
>   option vid '41'
>   option ifname 'eth1'
>   list   ingress_qos_mapping '1:2'
>   list   ingress_qos_mapping '2:5'
>   list   egress_qos_mapping '0:3'
> """
>
> Signed-off-by: Pau Espin Pedrol <pespin.shar@gmail.com>
> Tested-by: Pedro <pedrowrt@cas.cat>
> ---
>  system-linux.c | 22 +++++++++++++-
>  system.h       |  8 +++++
>  vlandev.c      | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 109 insertions(+), 1 deletion(-)
>
> diff --git a/system-linux.c b/system-linux.c
> index 62636c4..c61a5a2 100644
> --- a/system-linux.c
> +++ b/system-linux.c
> @@ -1401,8 +1401,10 @@ int system_vlan_del(struct device *dev)
>  int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlandev_config *cfg)
>  {
>         struct nl_msg *msg;
> -       struct nlattr *linkinfo, *data;
> +       struct nlattr *linkinfo, *data, *qos;
>         struct ifinfomsg iim = { .ifi_family = AF_UNSPEC };
> +       struct vlan_qos_mapping *dep;
> +       struct ifla_vlan_qos_mapping nl_qos_map;
>         int rv;
>
>         msg = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_CREATE | NLM_F_EXCL);
> @@ -1431,6 +1433,24 @@ int system_vlandev_add(struct device *vlandev, struct device *dev, struct vlande
>                 netifd_log_message(L_WARNING, "%s Your kernel is older than linux 3.10.0, 802.1ad is not supported defaulting to 802.1q", vlandev->type->name);
>  #endif
>
> +       if (!(qos = nla_nest_start(msg, IFLA_VLAN_INGRESS_QOS)))
> +               goto nla_put_failure;

Add an empty line after the goto statement
>
> +       list_for_each_entry(dep, &cfg->ingress_qos_mapping_list, list) {
> +               nl_qos_map.from = dep->from;
> +               nl_qos_map.to = dep->to;
> +               nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
> +       }
> +       nla_nest_end(msg, qos);
> +
> +       if (!(qos = nla_nest_start(msg, IFLA_VLAN_EGRESS_QOS)))
> +               goto nla_put_failure;

Add an empty line after the goto statement
>
> +       list_for_each_entry(dep, &cfg->egress_qos_mapping_list, list) {
> +               nl_qos_map.from = dep->from;
> +               nl_qos_map.to = dep->to;
> +               nla_put(msg, IFLA_VLAN_QOS_MAPPING, sizeof(nl_qos_map), &nl_qos_map);
> +       }
> +       nla_nest_end(msg, qos);
> +
>         nla_nest_end(msg, data);
>         nla_nest_end(msg, linkinfo);
>
> diff --git a/system.h b/system.h
> index b377416..e677c95 100644
> --- a/system.h
> +++ b/system.h
> @@ -158,9 +158,17 @@ enum vlan_proto {
>         VLAN_PROTO_8021AD = 0x88A8
>  };
>
> +struct vlan_qos_mapping {
> +       struct list_head list; /* entry in vlandev_config->{e,in}ress_qos_mapping_list */

It's better to use  struct vlist_simple_node iso struct list_head; see
struct dns_server as example
>
> +       uint32_t from;
> +       uint32_t to;
> +};
> +
>  struct vlandev_config {
>         enum vlan_proto proto;
>         uint16_t vid;
> +       struct list_head ingress_qos_mapping_list; /* list of struct vlan_qos_mapping  */

Use  struct vlist_simple_tree iso struct list_head
>
> +       struct list_head egress_qos_mapping_list;  /* list of struct vlan_qos_mapping  */

 Use  struct vlist_simple_tree iso struct list_head
>
>  };
>
>  static inline int system_get_addr_family(unsigned int flags)
> diff --git a/vlandev.c b/vlandev.c
> index ceaeb3e..3d4d0e4 100644
> --- a/vlandev.c
> +++ b/vlandev.c
> @@ -13,6 +13,7 @@
>   */
>
>  #include <string.h>
> +#include <inttypes.h>
>
>  #include "netifd.h"
>  #include "device.h"
> @@ -22,12 +23,16 @@
>  enum {
>         VLANDEV_ATTR_IFNAME,
>         VLANDEV_ATTR_VID,
> +       VLANDEV_ATTR_INGRESS_QOS_MAPPING,
> +       VLANDEV_ATTR_EGRESS_QOS_MAPPING,
>         __VLANDEV_ATTR_MAX
>  };
>
>  static const struct blobmsg_policy vlandev_attrs[__VLANDEV_ATTR_MAX] = {
>         [VLANDEV_ATTR_IFNAME] = { "ifname", BLOBMSG_TYPE_STRING },
>         [VLANDEV_ATTR_VID] = { "vid", BLOBMSG_TYPE_INT32 },
> +       [VLANDEV_ATTR_INGRESS_QOS_MAPPING] = { "ingress_qos_mapping", BLOBMSG_TYPE_ARRAY },
> +       [VLANDEV_ATTR_EGRESS_QOS_MAPPING] = { "egress_qos_mapping", BLOBMSG_TYPE_ARRAY },
>  };
>
>  static const struct uci_blob_param_list vlandev_attr_list = {
> @@ -122,13 +127,41 @@ static void
>  vlandev_free(struct device *dev)
>  {
>         struct vlandev_device *mvdev;
> +       struct vlan_qos_mapping *dep, *tmp;
>
>         mvdev = container_of(dev, struct vlandev_device, dev);
>         device_remove_user(&mvdev->parent);
>         free(mvdev->config_data);
> +       list_for_each_entry_safe(dep, tmp, &mvdev->config.ingress_qos_mapping_list, list) {
> +               list_del(&dep->list);
> +               free(dep);
> +       }

The lines above can be replaced by vlist_simple_flush_all call when
using vlist_simple_tree
>
> +       list_for_each_entry_safe(dep, tmp, &mvdev->config.egress_qos_mapping_list, list) {
> +               list_del(&dep->list);
> +               free(dep);
> +       }

 The lines above can be replaced by vlist_simple_flush_all when using
vlist_simple_tree
>
>         free(mvdev);
>  }
>
> +static void vlandev_qos_mapping_dump(struct blob_buf *b, const char *name, const struct list_head *qos_mapping_li)
> +{
> +       const struct vlan_qos_mapping *dep;
> +       void *a, *t;
> +
> +       a = blobmsg_open_array(b, name);
> +
> +       list_for_each_entry(dep, qos_mapping_li, list) {
> +               t = blobmsg_open_table(b, NULL);
> +
> +               blobmsg_add_u32(b, "from", dep->from);
> +               blobmsg_add_u32(b, "to", dep->to);
> +
> +               blobmsg_close_table(b, t);
> +       }
> +
> +       blobmsg_close_array(b, a);
> +}
> +
>  static void
>  vlandev_dump_info(struct device *dev, struct blob_buf *b)
>  {
> @@ -137,6 +170,8 @@ vlandev_dump_info(struct device *dev, struct blob_buf *b)
>         mvdev = container_of(dev, struct vlandev_device, dev);
>         blobmsg_add_string(b, "parent", mvdev->parent.dev->ifname);
>         system_if_dump_info(dev, b);
> +       vlandev_qos_mapping_dump(b, "ingress_qos_mapping", &mvdev->config.ingress_qos_mapping_list);
> +       vlandev_qos_mapping_dump(b, "egress_qos_mapping", &mvdev->config.egress_qos_mapping_list);
>  }
>
>  static void
> @@ -152,18 +187,60 @@ vlandev_config_init(struct device *dev)
>         device_add_user(&mvdev->parent, basedev);
>  }
>
> +static void vlandev_qos_mapping_list_apply(struct list_head *qos_mapping_li, struct blob_attr *list)
> +{
> +       struct blob_attr *cur;
> +       struct vlan_qos_mapping *qos_mapping;
> +       int rem, rc;
> +
> +       blobmsg_for_each_attr(cur, list, rem) {
> +               if (blobmsg_type(cur) != BLOBMSG_TYPE_STRING)
> +                       continue;
> +
> +               if (!blobmsg_check_attr(cur, false))
> +                       continue;
> +
> +               qos_mapping = calloc(1, sizeof(*qos_mapping));
> +               if (!qos_mapping)
> +                       continue;

Keep coding style aligned by adding a new line after the continue statement
>
> +               INIT_LIST_HEAD(&qos_mapping->list);
> +               rc = sscanf(blobmsg_data(cur), "%" PRIu32 ":%" PRIu32, &qos_mapping->from, &qos_mapping->to);
> +               if (rc != 2) {
> +                       free(qos_mapping);
> +                       continue;
> +               }
> +               list_add_tail(&qos_mapping->list, qos_mapping_li);
> +       }
> +}
> +
>  static void
>  vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr **tb)
>  {
>         struct vlandev_config *cfg = &mvdev->config;
> +       struct vlan_qos_mapping *dep, *tmp;
>         struct blob_attr *cur;
>
>         cfg->proto = (mvdev->dev.type == &vlan8021q_device_type) ?
>                 VLAN_PROTO_8021Q : VLAN_PROTO_8021AD;
>         cfg->vid = 1;
>
> +       list_for_each_entry_safe(dep, tmp, &cfg->ingress_qos_mapping_list, list) {
> +               list_del(&dep->list);
> +               free(dep);
> +       }

This can be replaced by  vlist_simple_update when using vlist_simple_tree
>
> +       list_for_each_entry_safe(dep, tmp, &cfg->egress_qos_mapping_list, list) {
> +               list_del(&dep->list);
> +               free(dep);
> +       }

 This can be replaced by  vlist_simple_update when using vlist_simple_tree
>
> +
>         if ((cur = tb[VLANDEV_ATTR_VID]))
>                 cfg->vid = (uint16_t) blobmsg_get_u32(cur);
> +
> +       if ((cur = tb[VLANDEV_ATTR_INGRESS_QOS_MAPPING]))
> +               vlandev_qos_mapping_list_apply(&cfg->ingress_qos_mapping_list, cur);
> +
> +       if ((cur = tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING]))
> +               vlandev_qos_mapping_list_apply(&cfg->egress_qos_mapping_list, cur);

At the end you need to call  vlist_simple_flush to flush the unused entries

Thx,
Hans
>
>  }
>
>  static enum dev_change_type
> @@ -221,6 +298,9 @@ vlandev_create(const char *name, struct device_type *devtype,
>         if (!mvdev)
>                 return NULL;
>
> +       INIT_LIST_HEAD(&mvdev->config.ingress_qos_mapping_list);
> +       INIT_LIST_HEAD(&mvdev->config.egress_qos_mapping_list);
> +
>         dev = &mvdev->dev;
>
>         if (device_init(dev, devtype, name) < 0) {
> --
> 2.26.2
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

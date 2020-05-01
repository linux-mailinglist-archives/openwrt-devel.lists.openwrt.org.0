Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713411C1D83
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 21:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/JoGOd/UXq2u8l5lwAIdeg30uUunw5ViggGDiYEVvZQ=; b=jvnKSA9jYIGrINon6+2WGcNAI
	28HAZQn/u/tPZ+E1e+xL67iNJJnqWxWylwnsiB8gp8cWSTD7fYgyaWBRM+AhoM5KKuhqi5qIwtvGG
	Et50aUwmUr9IkHcj+SXnEPjMEVKfheXoas+EDJy14zxqWZbyZHL5OMGH9Mo54exkHHXJGzy1JAi9x
	1HYupbaBAslJwc18b6ay7TlNNgIWSxiebyhACqaT5FnivNoXVUuv0bA3HEu1MO/IOZMZEHab0a31n
	vpJmbdOb/6F/HiRdrKNdsOyRLZDX1wpNL6CRjlVMGY90a8Wdh+4z5xDzrMerztrbbHI8y/OqJgeHc
	gacZ6vSNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUavE-0000ZQ-BF; Fri, 01 May 2020 19:02:04 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUav5-0000Y0-Qj
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 19:01:58 +0000
Received: by mail-qt1-x842.google.com with SMTP id h26so8683244qtu.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 12:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CVlR0ojKz/jo07JnJrBoJD/ri0GxqCWrN/F/hgsBoBw=;
 b=TX3wZtI49LYiJ9T/TPLvsinYVz/eOmsd8hVwSNYZFrc/hVyao/QEG3ciyC7shTYPvy
 x8unejTNrL6xflOV3A0e3fR1X3fLqnaNZkRQpTzvGXAXyxrsZ3Jzh1unUcLCxGvB8W7h
 ufr0pWzJaYQT+7KzeXb2kHkYdPhxp2DTT3gGzEc+67IT2QdY1Dv/kP9McnQjjQbEnGqz
 d+FAHKotE2+HSvKz+IJd8D4k020QvLyDUoSi72XnJbdKXQjShpfODhY3YzizOTQ1+GN+
 Vm4WBhH9YlGO/LWa0BNWujxtKr6EAlxZVuGibDw95WCbQx1kr5jMl/gwKCmsz6MREoz8
 +v0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CVlR0ojKz/jo07JnJrBoJD/ri0GxqCWrN/F/hgsBoBw=;
 b=svg8kd+Cu7jfoT07xfjHcvAXqWetLJ0YiOSwK4K419B6O2NDiBJ6O+asV7hG3a4/VK
 F6XQYH9bDItsATwMu5AVbO2dM+FVkP9etrzyzgv0gDAiUNVcJ2gVDuyi8knGfHHiN7At
 QT4nPFlXdhtyMTZshJoD6jA78lh9a4o/CNcnN3ppjSTQXV2vSyyJsOMqvWRHkMtQV5lg
 Rhda9JU6zZw8fcaJteC1ygrMyKUwFp90Oz5UcwlGOgQQ+bCboGtxcAyfKNJv3iAuqEij
 1PIJFt5V4TVFyOW87XD60urd/zffSu67Gfri0CHzNgr0XbGCr6Hworf8ZLhOMAQEd2hG
 tvxA==
X-Gm-Message-State: AGi0PuaBLnjhOsJBEF0EO11RHaibCN1VD9ElacLfRz7+SH3nnbJUX/6f
 pSpfQ8aUnvodXeZlb2E66pjDI3jhjGXY5D+MAtE=
X-Google-Smtp-Source: APiQypKLfjspf+axWUEZ35jjWGEOjagN290rmQiEqKfdQKYwTF9gDNvUKxWeFNSfwsbt4rdWkuCTvWaGIKEQ3rWqE3E=
X-Received: by 2002:ac8:6d35:: with SMTP id r21mr5126457qtu.210.1588359714223; 
 Fri, 01 May 2020 12:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200428074054.2091-1-pespin@espeweb.net>
In-Reply-To: <20200428074054.2091-1-pespin@espeweb.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 1 May 2020 21:01:43 +0200
Message-ID: <CAJLcKsHuvd8=h3=KuNqSUT=AwDRDi7Be2G91wGP8UGxtn6SOKg@mail.gmail.com>
To: Pau Espin Pedrol <pespin@espeweb.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_120155_872446_798FA2E5 
X-CRM114-Status: GOOD (  23.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============3093615634511702449=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3093615634511702449==
Content-Type: multipart/alternative; boundary="0000000000008abe8705a49ad0d3"

--0000000000008abe8705a49ad0d3
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, Apr 28, 2020 at 9:41 AM Pau Espin Pedrol <pespin@espeweb.net> wrote:

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
> Size of mapping arrays (ingress=8, egress=16) taken from linux kernel
> "struct vlan_dev_priv".
>
> Signed-off-by: Pau Espin Pedrol <pespin.shar@gmail.com>
> Tested-by: Pedro <pedrowrt@cas.cat>
> ---
>  system-linux.c | 19 ++++++++++++++++-
>  system.h       |  5 +++++
>  vlandev.c      | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 80 insertions(+), 1 deletion(-)
>
> diff --git a/system-linux.c b/system-linux.c
> index 62636c4..fa236ad 100644
> --- a/system-linux.c
> +++ b/system-linux.c
> @@ -1401,9 +1401,10 @@ int system_vlan_del(struct device *dev)
>  int system_vlandev_add(struct device *vlandev, struct device *dev, struct
> vlandev_config *cfg)
>  {
>         struct nl_msg *msg;
> -       struct nlattr *linkinfo, *data;
> +       struct nlattr *linkinfo, *data, *qos;
>         struct ifinfomsg iim = { .ifi_family = AF_UNSPEC };
>         int rv;
> +       int i;
>
>         msg = nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_REQUEST | NLM_F_CREATE
> | NLM_F_EXCL);
>
> @@ -1431,6 +1432,22 @@ int system_vlandev_add(struct device *vlandev,
> struct device *dev, struct vlande
>                 netifd_log_message(L_WARNING, "%s Your kernel is older
> than linux 3.10.0, 802.1ad is not supported defaulting to 802.1q",
> vlandev->type->name);
>  #endif
>
> +       if (!(qos = nla_nest_start(msg, IFLA_VLAN_INGRESS_QOS)))
> +               goto nla_put_failure;
> +       for (i = 0; i < cfg->ingress_qos_mappings_len; i++)
> +               nla_put(msg, IFLA_VLAN_QOS_MAPPING,
> +                       sizeof(cfg->ingress_qos_mappings[i]),
> +                       &cfg->ingress_qos_mappings[i]);
> +       nla_nest_end(msg, qos);
> +
> +       if (!(qos = nla_nest_start(msg, IFLA_VLAN_EGRESS_QOS)))
> +               goto nla_put_failure;
> +       for (i = 0; i < cfg->egress_qos_mappings_len; i++)
> +               nla_put(msg, IFLA_VLAN_QOS_MAPPING,
> +                       sizeof(cfg->egress_qos_mappings[i]),
> +                       &cfg->egress_qos_mappings[i]);
> +       nla_nest_end(msg, qos);
> +
>         nla_nest_end(msg, data);
>         nla_nest_end(msg, linkinfo);
>
> diff --git a/system.h b/system.h
> index b377416..d8fc0c4 100644
> --- a/system.h
> +++ b/system.h
> @@ -18,6 +18,7 @@
>  #include <sys/time.h>
>  #include <sys/socket.h>
>  #include <arpa/inet.h>
> +#include <linux/if_link.h>
>  #include "device.h"
>  #include "interface-ip.h"
>  #include "iprule.h"
> @@ -161,6 +162,10 @@ enum vlan_proto {
>  struct vlandev_config {
>         enum vlan_proto proto;
>         uint16_t vid;
> +       struct ifla_vlan_qos_mapping ingress_qos_mappings[8];
>
+       size_t ingress_qos_mappings_len;
> +       struct ifla_vlan_qos_mapping egress_qos_mappings[16];
>
Use a netifd defined struct as struct ifla_vlan_qos_mapping is a Linux
specific struct ; the usage of struct ifla_vlan_qos should be confined to
system-linux.c.
Also use lists here iso fixed arrays as at least for egress qos settings
you can define more than 16 entries after checking the Linux kernel code

> +       size_t egress_qos_mappings_len;
>  };
>
>  static inline int system_get_addr_family(unsigned int flags)
> diff --git a/vlandev.c b/vlandev.c
> index ceaeb3e..2cc9a19 100644
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
> +       [VLANDEV_ATTR_INGRESS_QOS_MAPPING] = { "ingress_qos_mapping",
> BLOBMSG_TYPE_ARRAY },
> +       [VLANDEV_ATTR_EGRESS_QOS_MAPPING] = { "egress_qos_mapping",
> BLOBMSG_TYPE_ARRAY },
>  };
>
>  static const struct uci_blob_param_list vlandev_attr_list = {
> @@ -152,6 +157,42 @@ vlandev_config_init(struct device *dev)
>         device_add_user(&mvdev->parent, basedev);
>  }
>
> +static size_t vlandev_qos_mappings_list_apply(struct
> ifla_vlan_qos_mapping *qos_mapping, size_t len, struct blob_attr *list)
> +{
> +       struct blob_attr *cur;
> +       int rem, rc;
> +       int i = 0;
> +
> +       blobmsg_for_each_attr(cur, list, rem) {
> +               if (i == len) {
> +                       netifd_log_message(L_WARNING, "parsing failed: too
> many (>%d) qos mappings\n", len);
>
Check is not necessary anymore if lists are used

> +                       return 0;
> +               }
> +
> +               if (blobmsg_type(cur) != BLOBMSG_TYPE_STRING) {
> +                       netifd_log_message(L_WARNING, "parsing failed: qos
> mapping attr type != string\n");
> +                       return 0;
>
Just ignore this entry and don't bail out

> +               }
> +
> +               if (!blobmsg_check_attr(cur, false)) {
> +                       netifd_log_message(L_WARNING, "parsing failed: qos
> mapping attr blobmsg_check_attr() failed\n");
> +                       return 0;
>
Same here; just ignore the entry and don'tt bail out

> +               }
> +
> +               rc = sscanf(blobmsg_data(cur), "%" PRIu32 ":%" PRIu32,
> &qos_mapping[i].from, &qos_mapping[i].to);
> +               if (rc != 2) {
> +                       netifd_log_message(L_WARNING, "parsing failed: qos
> mapping not in form <from_nr>:<to_nr>\n");
>
Same here; just ignore and don't bail out

> +                       return 0;
> +               }
> +
> +               i++;
> +       }
> +
> +       return i;
> +}
> +
> +
> +
>  static void
>  vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr
> **tb)
>  {
> @@ -161,9 +202,25 @@ vlandev_apply_settings(struct vlandev_device *mvdev,
> struct blob_attr **tb)
>         cfg->proto = (mvdev->dev.type == &vlan8021q_device_type) ?
>                 VLAN_PROTO_8021Q : VLAN_PROTO_8021AD;
>         cfg->vid = 1;
> +       cfg->ingress_qos_mappings_len = 0;
> +       cfg->egress_qos_mappings_len = 0;
>
>         if ((cur = tb[VLANDEV_ATTR_VID]))
>                 cfg->vid = (uint16_t) blobmsg_get_u32(cur);
> +
> +       if ((cur = tb[VLANDEV_ATTR_INGRESS_QOS_MAPPING])) {
> +               cfg->ingress_qos_mappings_len =
> +
>  vlandev_qos_mappings_list_apply(cfg->ingress_qos_mappings,
> +
>  ARRAY_SIZE(cfg->ingress_qos_mappings),
> +                                                       cur);
> +       }
> +
> +       if ((cur = tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING])) {
> +               cfg->egress_qos_mappings_len =
> +
>  vlandev_qos_mappings_list_apply(cfg->egress_qos_mappings,
> +
>  ARRAY_SIZE(cfg->egress_qos_mappings),
> +                                                       cur);
> +       }
>  }
>
> Extend vlandev_dump_info to display the ingress and egress qos mappings

Hans

>  static enum dev_change_type
> --
> 2.26.2
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000008abe8705a49ad0d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Apr 28, 2020 at 9:41 AM Pau Espin Ped=
rol &lt;<a href=3D"mailto:pespin@espeweb.net">pespin@espeweb.net</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: Pau E=
spin Pedrol &lt;<a href=3D"mailto:pespin.shar@gmail.com" target=3D"_blank">=
pespin.shar@gmail.com</a>&gt;<br>
<br>
It allows setting mappings for instance this way:<br>
&quot;&quot;&quot;<br>
config device<br>
=C2=A0 option name &#39;vlan41&#39;<br>
=C2=A0 option type &#39;8021q&#39;<br>
=C2=A0 option vid &#39;41&#39;<br>
=C2=A0 option ifname &#39;eth1&#39;<br>
=C2=A0 list=C2=A0 =C2=A0ingress_qos_mapping &#39;1:2&#39;<br>
=C2=A0 list=C2=A0 =C2=A0ingress_qos_mapping &#39;2:5&#39;<br>
=C2=A0 list=C2=A0 =C2=A0egress_qos_mapping &#39;0:3&#39;<br>
&quot;&quot;&quot;<br>
<br>
Size of mapping arrays (ingress=3D8, egress=3D16) taken from linux kernel<b=
r>
&quot;struct vlan_dev_priv&quot;.<br>
<br>
Signed-off-by: Pau Espin Pedrol &lt;<a href=3D"mailto:pespin.shar@gmail.com=
" target=3D"_blank">pespin.shar@gmail.com</a>&gt;<br>
Tested-by: Pedro &lt;<a href=3D"mailto:pedrowrt@cas.cat" target=3D"_blank">=
pedrowrt@cas.cat</a>&gt;<br>
---<br>
=C2=A0system-linux.c | 19 ++++++++++++++++-<br>
=C2=A0system.h=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 5 +++++<br>
=C2=A0vlandev.c=C2=A0 =C2=A0 =C2=A0 | 57 ++++++++++++++++++++++++++++++++++=
++++++++++++++++<br>
=C2=A03 files changed, 80 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/system-linux.c b/system-linux.c<br>
index 62636c4..fa236ad 100644<br>
--- a/system-linux.c<br>
+++ b/system-linux.c<br>
@@ -1401,9 +1401,10 @@ int system_vlan_del(struct device *dev)<br>
=C2=A0int system_vlandev_add(struct device *vlandev, struct device *dev, st=
ruct vlandev_config *cfg)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct nl_msg *msg;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct nlattr *linkinfo, *data;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct nlattr *linkinfo, *data, *qos;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ifinfomsg iim =3D { .ifi_family =3D AF_U=
NSPEC };<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int rv;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int i;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 msg =3D nlmsg_alloc_simple(RTM_NEWLINK, NLM_F_R=
EQUEST | NLM_F_CREATE | NLM_F_EXCL);<br>
<br>
@@ -1431,6 +1432,22 @@ int system_vlandev_add(struct device *vlandev, struc=
t device *dev, struct vlande<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 netifd_log_message(=
L_WARNING, &quot;%s Your kernel is older than linux 3.10.0, 802.1ad is not =
supported defaulting to 802.1q&quot;, vlandev-&gt;type-&gt;name);<br>
=C2=A0#endif<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(qos =3D nla_nest_start(msg, IFLA_VLAN_ING=
RESS_QOS)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto nla_put_failur=
e;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; cfg-&gt;ingress_qos_mappin=
gs_len; i++)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nla_put(msg, IFLA_V=
LAN_QOS_MAPPING,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sizeof(cfg-&gt;ingress_qos_mappings[i]),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;cfg-&gt;ingress_qos_mappings[i]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0nla_nest_end(msg, qos);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!(qos =3D nla_nest_start(msg, IFLA_VLAN_EGR=
ESS_QOS)))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto nla_put_failur=
e;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; cfg-&gt;egress_qos_mapping=
s_len; i++)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nla_put(msg, IFLA_V=
LAN_QOS_MAPPING,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sizeof(cfg-&gt;egress_qos_mappings[i]),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;cfg-&gt;egress_qos_mappings[i]);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0nla_nest_end(msg, qos);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 nla_nest_end(msg, data);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 nla_nest_end(msg, linkinfo);<br>
<br>
diff --git a/system.h b/system.h<br>
index b377416..d8fc0c4 100644<br>
--- a/system.h<br>
+++ b/system.h<br>
@@ -18,6 +18,7 @@<br>
=C2=A0#include &lt;sys/time.h&gt;<br>
=C2=A0#include &lt;sys/socket.h&gt;<br>
=C2=A0#include &lt;arpa/inet.h&gt;<br>
+#include &lt;linux/if_link.h&gt;<br>
=C2=A0#include &quot;device.h&quot;<br>
=C2=A0#include &quot;interface-ip.h&quot;<br>
=C2=A0#include &quot;iprule.h&quot;<br>
@@ -161,6 +162,10 @@ enum vlan_proto {<br>
=C2=A0struct vlandev_config {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 enum vlan_proto proto;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 uint16_t vid;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ifla_vlan_qos_mapping ingress_qos_mappin=
gs[8]; <br></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_t ingress_qos_mappings_len;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ifla_vlan_qos_mapping egress_qos_mapping=
s[16];<br></blockquote><div>Use a netifd defined struct as struct ifla_vlan=
_qos_mapping is a Linux specific struct ; the usage of struct ifla_vlan_qos=
 should be confined to system-linux.c.</div><div>Also use lists here iso fi=
xed arrays as at least for egress qos settings you can define more than 16 =
entries after checking the Linux kernel code <br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0size_t egress_qos_mappings_len;<br>
=C2=A0};<br>
<br>
=C2=A0static inline int system_get_addr_family(unsigned int flags)<br>
diff --git a/vlandev.c b/vlandev.c<br>
index ceaeb3e..2cc9a19 100644<br>
--- a/vlandev.c<br>
+++ b/vlandev.c<br>
@@ -13,6 +13,7 @@<br>
=C2=A0 */<br>
<br>
=C2=A0#include &lt;string.h&gt;<br>
+#include &lt;inttypes.h&gt;<br>
<br>
=C2=A0#include &quot;netifd.h&quot;<br>
=C2=A0#include &quot;device.h&quot;<br>
@@ -22,12 +23,16 @@<br>
=C2=A0enum {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 VLANDEV_ATTR_IFNAME,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 VLANDEV_ATTR_VID,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VLANDEV_ATTR_INGRESS_QOS_MAPPING,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0VLANDEV_ATTR_EGRESS_QOS_MAPPING,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 __VLANDEV_ATTR_MAX<br>
=C2=A0};<br>
<br>
=C2=A0static const struct blobmsg_policy vlandev_attrs[__VLANDEV_ATTR_MAX] =
=3D {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [VLANDEV_ATTR_IFNAME] =3D { &quot;ifname&quot;,=
 BLOBMSG_TYPE_STRING },<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [VLANDEV_ATTR_VID] =3D { &quot;vid&quot;, BLOBM=
SG_TYPE_INT32 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0[VLANDEV_ATTR_INGRESS_QOS_MAPPING] =3D { &quot;=
ingress_qos_mapping&quot;, BLOBMSG_TYPE_ARRAY },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0[VLANDEV_ATTR_EGRESS_QOS_MAPPING] =3D { &quot;e=
gress_qos_mapping&quot;, BLOBMSG_TYPE_ARRAY },<br>
=C2=A0};<br>
<br>
=C2=A0static const struct uci_blob_param_list vlandev_attr_list =3D {<br>
@@ -152,6 +157,42 @@ vlandev_config_init(struct device *dev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 device_add_user(&amp;mvdev-&gt;parent, basedev)=
;<br>
=C2=A0}<br>
<br>
+static size_t vlandev_qos_mappings_list_apply(struct ifla_vlan_qos_mapping=
 *qos_mapping, size_t len, struct blob_attr *list)<br>
+{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct blob_attr *cur;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int rem, rc;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int i =3D 0;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0blobmsg_for_each_attr(cur, list, rem) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (i =3D=3D len) {=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0netifd_log_message(L_WARNING, &quot;parsing failed: too many (&gt=
;%d) qos mappings\n&quot;, len);<br>
</blockquote><div>Check is not necessary anymore if lists are used <br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">+=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (blobmsg_type(cu=
r) !=3D BLOBMSG_TYPE_STRING) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0netifd_log_message(L_WARNING, &quot;parsing failed: qos mapping a=
ttr type !=3D string\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return 0;<br></blockquote><div>Just ignore this entry and don&#39=
;t bail out <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!blobmsg_check_=
attr(cur, false)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0netifd_log_message(L_WARNING, &quot;parsing failed: qos mapping a=
ttr blobmsg_check_attr() failed\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return 0;<br></blockquote><div>Same here; just ignore the entry a=
nd don&#39;tt bail out <br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D sscanf(blobm=
sg_data(cur), &quot;%&quot; PRIu32 &quot;:%&quot; PRIu32, &amp;qos_mapping[=
i].from, &amp;qos_mapping[i].to);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc !=3D 2) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0netifd_log_message(L_WARNING, &quot;parsing failed: qos mapping n=
ot in form &lt;from_nr&gt;:&lt;to_nr&gt;\n&quot;);<br></blockquote><div>Sam=
e here; just ignore and don&#39;t bail out <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i++;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return i;<br>
+}<br>
+<br>
+<br>
+<br>
=C2=A0static void<br>
=C2=A0vlandev_apply_settings(struct vlandev_device *mvdev, struct blob_attr=
 **tb)<br>
=C2=A0{<br>
@@ -161,9 +202,25 @@ vlandev_apply_settings(struct vlandev_device *mvdev, s=
truct blob_attr **tb)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cfg-&gt;proto =3D (mvdev-&gt;dev.type =3D=3D &a=
mp;vlan8021q_device_type) ?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VLAN_PROTO_8021Q : =
VLAN_PROTO_8021AD;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cfg-&gt;vid =3D 1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cfg-&gt;ingress_qos_mappings_len =3D 0;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0cfg-&gt;egress_qos_mappings_len =3D 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((cur =3D tb[VLANDEV_ATTR_VID]))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cfg-&gt;vid =3D (ui=
nt16_t) blobmsg_get_u32(cur);<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((cur =3D tb[VLANDEV_ATTR_INGRESS_QOS_MAPPIN=
G])) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg-&gt;ingress_qos=
_mappings_len =3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0vlandev_qos_mappings_list_apply(cfg-&gt;ingress_qos_mappings,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ARRAY_SIZE(cfg-&gt;ingress_=
qos_mappings),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cur);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((cur =3D tb[VLANDEV_ATTR_EGRESS_QOS_MAPPING=
])) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfg-&gt;egress_qos_=
mappings_len =3D<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0vlandev_qos_mappings_list_apply(cfg-&gt;egress_qos_mappings,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ARRAY_SIZE(cfg-&gt;egress_q=
os_mappings),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cur);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0}<br>
<br></blockquote><div>Extend vlandev_dump_info to display the ingress and e=
gress qos mappings</div><div><br></div><div>Hans<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
=C2=A0static enum dev_change_type<br>
-- <br>
2.26.2<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--0000000000008abe8705a49ad0d3--


--===============3093615634511702449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3093615634511702449==--


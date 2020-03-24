Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6199E19121C
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 14:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+vcDHi1I3tvSqOHCpcJPtFZeyAkkIOE+YNUB9MLRz8E=; b=owAi0SAjo9S2G1BVdH5R+YCRI
	K/XmDJy5+uJwKiIwbnmPZTUKvLNJTCvWO9qfsR20nNvwRhq9hcvMvBconP5XWbI+x2cn9Co0uWzll
	eF2o6gEzXR5ZReIAc3lowhNDVQDZnNDC3jTbvmnAmnPNuTUAPSLD/FonzYxMVfZxh4yyBv8eZmsef
	+038RbE+ZztgHjIslklinwELSxifT1Ma/9/uuuk+I6KALe0clVrqdT3zcr0meHl8p12mVi0fmugII
	ob+SlmbIQSLIfYO2kvxmYyYpRamx21hbW+Wn40mktTvqj9H6ktJGL2FvRUaA30alx3P64bcXNsxQw
	jgTQaZUaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGk2S-0003ki-Sg; Tue, 24 Mar 2020 13:56:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGk2K-0003kA-2m
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 13:56:10 +0000
Received: by mail-wr1-x443.google.com with SMTP id w10so21583942wrm.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 06:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pFDZPVX3UCTJDsXXTSWJvrZzuSDbXwOfT3wtqsSA5FE=;
 b=BEHsG4P9bQOc6dRTXkglZOSRH+41vTpsLcbVLtHK43qZ4LsHu2Ga2FOAAtwNNosoRd
 OgB+G8huJX82jFnm/zCnDwBGCG8t/0mETZFeBGc6uydpdtmJDGDOcEIv6Q2CARFZbYG4
 XGfA+MXX31f4Qxs6jbGH8zVttUhR3dZlTYY2B3ZBjv29mh2PBFmXjX5Td/SA+i5FMRkC
 wmq0rGyF8v1D/0QDT8IrfWp89gIpnnR0cpqm00KCMoxT/OzJB//FeJ0tIJQYZ/aoLjRx
 GXYWvvUnaMJHtep0lBmac09BLItJOQPVi6fXkYdo0UftabH2T2PXV7kX3oRGowpt/mhn
 sSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pFDZPVX3UCTJDsXXTSWJvrZzuSDbXwOfT3wtqsSA5FE=;
 b=I5bZOAOCzZ1DwXJgl2iXz/zZrfxTKThpHnJdmXT1icwfh9OBI53k2wMOWBLgxwjz6p
 kxTZhRg/leFUpMGGlY4zpojzKEPf7wXjeomf+uF5r/G0tjzKozC7cv04o5jTqGyVGwt9
 7306RQQpSLAdzr5IzRxoIytwsJ8RpE7W35A3tTcla6GV9UIAJ7fy0SDlzLJAiOPoE9Cz
 sXgena7Dt6lda6t3Z5U2x1dkg7bR6l6YVNhTEwKxfhdrNNQq+yIY2/wG8QCmLsDWlcLC
 pyZCaImOhns2HV4LSouFi89zjkk/Jvg7Oxf+aZp0Wsf9s2hTP/vDo7MlV7QFAc2S22Tz
 3WPw==
X-Gm-Message-State: ANhLgQ0NYILhln6ysjpn1mgBhM9Vx3cfToAojsYvkhiOA16ob6su4JPX
 4F5XzkfSnydCakbw5f/mULPULWvrDp2oOsDWAhc=
X-Google-Smtp-Source: ADFU+vunCjP+kc0OPslf/Te3rHErIIM7CRwMTqyBoy3iO+V7r4DsQ89nTuhuoTjgSrzMSb433+rq34r2d6GLCCJGEZk=
X-Received: by 2002:adf:dd01:: with SMTP id a1mr28548000wrm.153.1585058166001; 
 Tue, 24 Mar 2020 06:56:06 -0700 (PDT)
MIME-Version: 1.0
References: <158474142263.17958.4879845413668815555@git-01.infra.openwrt.org>
 <mailman.40429.1584741427.2486.lede-commits@lists.infradead.org>
 <caae2a33-08b7-66e3-4218-ac2a92ef703b@phrozen.org>
In-Reply-To: <caae2a33-08b7-66e3-4218-ac2a92ef703b@phrozen.org>
From: =?UTF-8?B?T2xkxZlpY2ggSmVkbGnEjWth?= <oldium.pro@gmail.com>
Date: Tue, 24 Mar 2020 14:55:57 +0100
Message-ID: <CALdrqOS9XpWn0gWMmM-zVmh=nxA3voY54=J-B6+CzUGnVX9=LA@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_065608_154948_5AB2F56C 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oldium.pro[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [openwrt/openwrt] mac80211: do not try to setup
 hostapd-managed interfaces.
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============4537013493469915428=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4537013493469915428==
Content-Type: multipart/alternative; boundary="000000000000eed48e05a19a1cb7"

--000000000000eed48e05a19a1cb7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

Are you able to describe what exactly does not work - how to reproduce it?
Maybe it is simple and obvious to you, but please describe what does not
work.

I just removed setting interface up and setting txpower on it - when the
interface is fully managed by hostapd. That looks reasonable to me, but
might be wrong as well. At least it made reporting of the interface status
working, see https://github.com/openwrt/openwrt/pull/2848 for screen-shots.

Regards,
Oldrich.



=C3=BAt 24. 3. 2020 v 12:10 odes=C3=ADlatel John Crispin <john@phrozen.org>=
 napsal:

> Hi
> below commit breaks wifi reconf feature and to be honest it looks like
> the wrong fix to me.
>         John
>
>
> > dangole pushed a commit to openwrt/openwrt.git, branch master:
> > https://git.openwrt.org/23a885bf89a204f91e4f17ed96f1a9fc7f50ea34
> >
> > commit 23a885bf89a204f91e4f17ed96f1a9fc7f50ea34
> > Author: Old=C5=99ich Jedli=C4=8Dka <oldium.pro@gmail.com>
> > AuthorDate: Mon Mar 16 21:00:51 2020 +0100
> >
> >      mac80211: do not try to setup hostapd-managed interfaces.
> >
> >      For virtual access points (when multiple SSIDs are used for one
> >      physical AP), there exist one physical network interface and
> >      multiple virtual interfaces, which are fully under control of
> >      hostapd. When networking is setup, the script
> >      `/lib/netifd/wireless/mac80211.sh` is called, which tries to bring
> >      the interface up by a call to `ip link set dev <iface> up`. This
> >      call might fail for virtual APs, because the virtual interface
> >      might not have been created by hostapd yet. There are some artific=
al
> >      delays in the script most probably to handle this, but when DFS
> >      channel availability check on 5GHz band is issued, hostapd can
> >      delay creating virtual interfaces by a minute.
> >
> >      In order to fix this (or work around it), do not try to bring the
> >      interface up (this is responsibility of hostapd anyway) and
> >      do not try to set txpower on the virtual interface.
> >
> >      Fixes FS#2698.
> >
> >      Signed-off-by: Old=C5=99ich Jedli=C4=8Dka <oldium.pro@gmail.com>
> > ---
> >   .../mac80211/files/lib/netifd/wireless/mac80211.sh     | 18
> +++++++++++-------
> >   1 file changed, 11 insertions(+), 7 deletions(-)
> >
> > diff --git
> a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> > index f22730c9fc..f59c498215 100644
> > --- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> > +++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> > @@ -533,6 +533,7 @@ mac80211_prepare_vif() {
> >
> >                       NEWAPLIST=3D"${NEWAPLIST}$ifname "
> >                       [ -n "$hostapd_ctrl" ] || {
> > +                             ap_ifname=3D"${ifname}"
> >
>  hostapd_ctrl=3D"${hostapd_ctrl:-/var/run/hostapd/$ifname}"
> >                       }
> >               ;;
> > @@ -753,13 +754,15 @@ mac80211_setup_vif() {
> >       json_get_var vif_enable enable 1
> >
> >       [ "$vif_enable" =3D 1 ] || action=3Ddown
> > -     logger ip link set dev "$ifname" $action
> > -     ip link set dev "$ifname" "$action" || {
> > -             wireless_setup_vif_failed IFUP_ERROR
> > -             json_select ..
> > -             return
> > -     }
> > -     [ -z "$vif_txpower" ] || iw dev "$ifname" set txpower fixed
> "${vif_txpower%%.*}00"
> > +     if [ "$mode" !=3D "ap" ] || [ "$ifname" =3D "$ap_ifname" ]; then
> > +             logger ip link set dev "$ifname" $action
> > +             ip link set dev "$ifname" "$action" || {
> > +                     wireless_setup_vif_failed IFUP_ERROR
> > +                     json_select ..
> > +                     return
> > +             }
> > +             [ -z "$vif_txpower" ] || iw dev "$ifname" set txpower
> fixed "${vif_txpower%%.*}00"
> > +     fi
> >
> >       case "$mode" in
> >               mesh)
> > @@ -924,6 +927,7 @@ drv_mac80211_setup() {
> >
> >       has_ap=3D
> >       hostapd_ctrl=3D
> > +     ap_ifname=3D
> >       hostapd_noscan=3D
> >       for_each_interface "ap" mac80211_check_ap
> >
> >
> > _______________________________________________
> > lede-commits mailing list
> > lede-commits@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/lede-commits
> >
>
>

--000000000000eed48e05a19a1cb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi John,<div><br></div><div>Are you able =
to describe what exactly does not work - how to reproduce it? Maybe it is s=
imple and obvious to you, but please describe what does not work.</div><div=
><br></div><div>I just removed setting interface up and setting txpower on =
it - when the interface is fully managed by hostapd. That looks reasonable =
to me, but might be wrong as well. At least it made reporting of the interf=
ace status working, see=C2=A0<a href=3D"https://github.com/openwrt/openwrt/=
pull/2848">https://github.com/openwrt/openwrt/pull/2848</a>=C2=A0for screen=
-shots.</div><div><br></div><div>Regards,</div><div>Oldrich.</div><div><br>=
</div><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">=C3=BAt 24. 3. 2020 v=C2=A012:10 odes=C3=ADlatel=
 John Crispin &lt;<a href=3D"mailto:john@phrozen.org">john@phrozen.org</a>&=
gt; napsal:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi<b=
r>
below commit breaks wifi reconf feature and to be honest it looks like <br>
the wrong fix to me.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 John<br>
<br>
<br>
&gt; dangole pushed a commit to openwrt/openwrt.git, branch master:<br>
&gt; <a href=3D"https://git.openwrt.org/23a885bf89a204f91e4f17ed96f1a9fc7f5=
0ea34" rel=3D"noreferrer" target=3D"_blank">https://git.openwrt.org/23a885b=
f89a204f91e4f17ed96f1a9fc7f50ea34</a><br>
&gt; <br>
&gt; commit 23a885bf89a204f91e4f17ed96f1a9fc7f50ea34<br>
&gt; Author: Old=C5=99ich Jedli=C4=8Dka &lt;<a href=3D"mailto:oldium.pro@gm=
ail.com" target=3D"_blank">oldium.pro@gmail.com</a>&gt;<br>
&gt; AuthorDate: Mon Mar 16 21:00:51 2020 +0100<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 mac80211: do not try to setup hostapd-managed inte=
rfaces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 For virtual access points (when multiple SSIDs are=
 used for one<br>
&gt;=C2=A0 =C2=A0 =C2=A0 physical AP), there exist one physical network int=
erface and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 multiple virtual interfaces, which are fully under=
 control of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 hostapd. When networking is setup, the script<br>
&gt;=C2=A0 =C2=A0 =C2=A0 `/lib/netifd/wireless/mac80211.sh` is called, whic=
h tries to bring<br>
&gt;=C2=A0 =C2=A0 =C2=A0 the interface up by a call to `ip link set dev &lt=
;iface&gt; up`. This<br>
&gt;=C2=A0 =C2=A0 =C2=A0 call might fail for virtual APs, because the virtu=
al interface<br>
&gt;=C2=A0 =C2=A0 =C2=A0 might not have been created by hostapd yet. There =
are some artifical<br>
&gt;=C2=A0 =C2=A0 =C2=A0 delays in the script most probably to handle this,=
 but when DFS<br>
&gt;=C2=A0 =C2=A0 =C2=A0 channel availability check on 5GHz band is issued,=
 hostapd can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 delay creating virtual interfaces by a minute.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 In order to fix this (or work around it), do not t=
ry to bring the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 interface up (this is responsibility of hostapd an=
yway) and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 do not try to set txpower on the virtual interface=
.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Fixes FS#2698.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 Signed-off-by: Old=C5=99ich Jedli=C4=8Dka &lt;<a h=
ref=3D"mailto:oldium.pro@gmail.com" target=3D"_blank">oldium.pro@gmail.com<=
/a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../mac80211/files/lib/netifd/wireless/mac80211.sh=C2=A0 =
=C2=A0 =C2=A0| 18 +++++++++++-------<br>
&gt;=C2=A0 =C2=A01 file changed, 11 insertions(+), 7 deletions(-)<br>
&gt; <br>
&gt; diff --git a/package/kernel/mac80211/files/lib/netifd/wireless/mac8021=
1.sh b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh<br>
&gt; index f22730c9fc..f59c498215 100644<br>
&gt; --- a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh<br=
>
&gt; +++ b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh<br=
>
&gt; @@ -533,6 +533,7 @@ mac80211_prepare_vif() {<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0NEWAPLIST=3D&quot;${NEWAPLIST}$ifname &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0[ -n &quot;$hostapd_ctrl&quot; ] || {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ap_ifname=3D&quot;${ifname}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_ctrl=3D&quot;${hostapd_ctr=
l:-/var/run/hostapd/$ifname}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; @@ -753,13 +754,15 @@ mac80211_setup_vif() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0json_get_var vif_enable enable 1<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$vif_enable&quot; =3D 1 ] || action=
=3Ddown<br>
&gt; -=C2=A0 =C2=A0 =C2=A0logger ip link set dev &quot;$ifname&quot; $actio=
n<br>
&gt; -=C2=A0 =C2=A0 =C2=A0ip link set dev &quot;$ifname&quot; &quot;$action=
&quot; || {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wireless_setup_vif_fa=
iled IFUP_ERROR<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0json_select ..<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return<br>
&gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0[ -z &quot;$vif_txpower&quot; ] || iw dev &quot;$=
ifname&quot; set txpower fixed &quot;${vif_txpower%%.*}00&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if [ &quot;$mode&quot; !=3D &quot;ap&quot; ] || [=
 &quot;$ifname&quot; =3D &quot;$ap_ifname&quot; ]; then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger ip link set de=
v &quot;$ifname&quot; $action<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ip link set dev &quot=
;$ifname&quot; &quot;$action&quot; || {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0wireless_setup_vif_failed IFUP_ERROR<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0json_select ..<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ -z &quot;$vif_txpow=
er&quot; ] || iw dev &quot;$ifname&quot; set txpower fixed &quot;${vif_txpo=
wer%%.*}00&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case &quot;$mode&quot; in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mesh)<br>
&gt; @@ -924,6 +927,7 @@ drv_mac80211_setup() {<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0has_ap=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_ctrl=3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ap_ifname=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_noscan=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for_each_interface &quot;ap&quot; mac80211_c=
heck_ap<br>
&gt;=C2=A0 =C2=A0<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; lede-commits mailing list<br>
&gt; <a href=3D"mailto:lede-commits@lists.infradead.org" target=3D"_blank">=
lede-commits@lists.infradead.org</a><br>
&gt; <a href=3D"http://lists.infradead.org/mailman/listinfo/lede-commits" r=
el=3D"noreferrer" target=3D"_blank">http://lists.infradead.org/mailman/list=
info/lede-commits</a><br>
&gt; <br>
<br>
</blockquote></div>

--000000000000eed48e05a19a1cb7--


--===============4537013493469915428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4537013493469915428==--


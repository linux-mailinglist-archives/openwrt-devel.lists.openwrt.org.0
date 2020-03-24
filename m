Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E42191333
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 15:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qLTEdorJDyAQ8aborHn7Vf16RZNlXh8732hekMGRb6E=; b=vATQGFUUZ6G944HlZul/LTljJ
	5JD2LRqPtwexguZrlvqZgmPf+CS9bcb4a8vRX0+3ad4c28T4BXRsGJzfxm0ey3qGwuojM3/HSuu49
	XxVsi73SsDkuBN2FX45FsnTZNeNT2YQBlFxOYbiesnkZjW2oHWdIAU7iobt583FyBFq7fjujgjkg/
	gCfMK+EN3R6nPOQS1yTJeBiw7TXarJWTur6/h7NPJWqwZ+lgweuNgQPq6PQri9Y6FK6iSVnazKpi3
	1tOuQl4qLN/FnJ4eH1MVvkAE5C5xSJdn8Wd1xOJOtZbIdYPfGyLSRRYGknDsFW2GHcITgDJndPR4T
	IVb95Hbzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkYt-0003jV-FA; Tue, 24 Mar 2020 14:29:47 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkYh-0003is-B1
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 14:29:37 +0000
Received: by mail-wm1-x332.google.com with SMTP id v25so1578162wmh.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LkU1/uSwr0VxtAVpdd9jGNoYxYN9SlWk1v7s3HBArBM=;
 b=gFLay/hQCKuEZRcQe4a3CLsnJRirezjSDqGJNA0mO8brNuQ05zPS9CpW5NyEiV16Fs
 lxm2zZ2yRkZvnw8DWTYz03IZatRjh9yRktCXTUqsZBXGDbNfi1WZL6fWrRwXtNXfp5/T
 VYTUB91TmZZs9bMomm2+MDXS2kXbFHI1+JWyKCT5CS2UPc1akmcAN8HK9SXmh2cpI9uY
 doXi3FVT3PhAzpwVTkHWbYD8sJfF5R4fr+suJHroixO1AvNIGlalvd/EEdbVzAqlCISC
 t4qeWoTvUhbO/Sfof7CG3QqYn+OCJZvzQN3mVBCO3V9a2aZ7UN2CaH2AXoXLLKEzdVLj
 hzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LkU1/uSwr0VxtAVpdd9jGNoYxYN9SlWk1v7s3HBArBM=;
 b=GnYHexyDyUrPbjONbiB1PxUZIsVWMTh70jvhDai9RbEXqjNqZR2MtgtpTjbDeRqZXZ
 98feuizIRcycM7SK3K1yymwR3d5gXVKk+uNosPvo93s4WdCxm5vcq+yUUBwzCk42+7Es
 T2k4haFwe4mRcnCGf2vLtaMtRmloZ+afnrnwNaO8mqOAx9sbOUAYR6g06l2bg7F/ozK3
 mp0WDyQGHXFwY+hD0Sfp3hdK0YdB9oGb7XJuJcRrAXUmTDU6tqasUxAMhXYDuf9jnjkE
 FLL+jFUJf2QYi3cFREFNQEHvq/pvpt+AqaztjQ+//Kf+pUM4anJYFfThk9hA+b5FyT9n
 eJ/A==
X-Gm-Message-State: ANhLgQ1bJurUqiq8diwDrFNFiJi3+5IVAPu6JHEHl+p4ktFg2VIPqsb4
 4QyI49K/nssiwUs9xQuCi1b7jfoyDO9J3D3i47I=
X-Google-Smtp-Source: ADFU+vuSjSyTCYJsfbSpsPnWryFdo51xNn7jNerK20FPd2DqmT3mLugedulN2JwJbP89rl0Ke939urIXCUxj5HAU4uE=
X-Received: by 2002:a1c:1f48:: with SMTP id f69mr6249440wmf.144.1585060173170; 
 Tue, 24 Mar 2020 07:29:33 -0700 (PDT)
MIME-Version: 1.0
References: <158474142263.17958.4879845413668815555@git-01.infra.openwrt.org>
 <mailman.40429.1584741427.2486.lede-commits@lists.infradead.org>
 <caae2a33-08b7-66e3-4218-ac2a92ef703b@phrozen.org>
 <CALdrqOS9XpWn0gWMmM-zVmh=nxA3voY54=J-B6+CzUGnVX9=LA@mail.gmail.com>
 <47a56a8b-774f-d994-5c0e-efd7247907a6@phrozen.org>
In-Reply-To: <47a56a8b-774f-d994-5c0e-efd7247907a6@phrozen.org>
From: =?UTF-8?B?T2xkxZlpY2ggSmVkbGnEjWth?= <oldium.pro@gmail.com>
Date: Tue, 24 Mar 2020 15:29:20 +0100
Message-ID: <CALdrqOT6E8ijWJckfY-xn+02OwSGjq9CgPLJtBLp5z4jruGfYA@mail.gmail.com>
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072935_417241_A77DA952 
X-CRM114-Status: GOOD (  32.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oldium.pro[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
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
Content-Type: multipart/mixed; boundary="===============5288679846617900722=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5288679846617900722==
Content-Type: multipart/alternative; boundary="00000000000091cd2105a19a946b"

--00000000000091cd2105a19a946b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John,

ok, my issue: https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D269=
8

Details:

When virtual access points are used (multiple BSSIDS on one physical
interface), only the first BSSID is assigned to an existing network
interface, all other access point's (BSSIDs) network interfaces are
created by hostapd. The original mac80211.sh script tries to call ip link
set dev <iface> up on all interfaces, even on virtual ones, and it tries to
set txpower too. This works as long as the interface exists prior to trying
to setting it up - when hostapd has enough time to create them. The script
uses sleep 1 most probably to give hostapd time to create the interfaces.
But when the creation of interfaces is delayed for any reason, like is for
DFS on 5GHz band, the interface is created after one minute (i.e. it takes
60 seconds to create virtual interfaces). The DFS on 5GHz works in a way
that the driver scans for any possible radar transmitting on the frequency
and if it does not find any within a minute, the frequency is allowed to be
used. In this case the setting-up (ip link set dev <iface> up) of the
interface fails (the interface does not exist yet) and wireless_add_vif is
not called. My patch ensures that the wireless_add_vif is called also for
virtual interfaces - those created by hostapd.

Regards,
Oldrich.


=C3=BAt 24. 3. 2020 v 15:05 odes=C3=ADlatel John Crispin <john@phrozen.org>=
 napsal:

> Hi,
> what do you setup a device fully managed by hostapd ? I am not sure i
> understand what that is. Best if you explain your problem so i can try
> to reproduce and fix it.
>
> to answer your question, in a multi vap setup "wifi reconf" will break
> with your change as it breaks the symmetry of link up/down calls
>
>         John
>
> On 24.03.20 14:55, Old=C5=99ich Jedli=C4=8Dka wrote:
> > Hi John,
> >
> > Are you able to describe what exactly does not work - how to reproduce
> > it? Maybe it is simple and obvious to you, but please describe what doe=
s
> > not work.
> >
> > I just removed setting interface up and setting txpower on it - when th=
e
> > interface is fully managed by hostapd. That looks reasonable to me, but
> > might be wrong as well. At least it made reporting of the interface
> > status working, see https://github.com/openwrt/openwrt/pull/2848 for
> > screen-shots.
> >
> > Regards,
> > Oldrich.
> >
> >
> >
> > =C3=BAt 24. 3. 2020 v 12:10 odes=C3=ADlatel John Crispin <john@phrozen.=
org
> > <mailto:john@phrozen.org>> napsal:
> >
> >     Hi
> >     below commit breaks wifi reconf feature and to be honest it looks
> like
> >     the wrong fix to me.
> >              John
> >
> >
> >      > dangole pushed a commit to openwrt/openwrt.git, branch master:
> >      > https://git.openwrt.org/23a885bf89a204f91e4f17ed96f1a9fc7f50ea34
> >      >
> >      > commit 23a885bf89a204f91e4f17ed96f1a9fc7f50ea34
> >      > Author: Old=C5=99ich Jedli=C4=8Dka <oldium.pro@gmail.com
> >     <mailto:oldium.pro@gmail.com>>
> >      > AuthorDate: Mon Mar 16 21:00:51 2020 +0100
> >      >
> >      >      mac80211: do not try to setup hostapd-managed interfaces.
> >      >
> >      >      For virtual access points (when multiple SSIDs are used for
> one
> >      >      physical AP), there exist one physical network interface an=
d
> >      >      multiple virtual interfaces, which are fully under control =
of
> >      >      hostapd. When networking is setup, the script
> >      >      `/lib/netifd/wireless/mac80211.sh` is called, which tries t=
o
> >     bring
> >      >      the interface up by a call to `ip link set dev <iface> up`.
> This
> >      >      call might fail for virtual APs, because the virtual
> interface
> >      >      might not have been created by hostapd yet. There are some
> >     artifical
> >      >      delays in the script most probably to handle this, but when
> DFS
> >      >      channel availability check on 5GHz band is issued, hostapd
> can
> >      >      delay creating virtual interfaces by a minute.
> >      >
> >      >      In order to fix this (or work around it), do not try to
> >     bring the
> >      >      interface up (this is responsibility of hostapd anyway) and
> >      >      do not try to set txpower on the virtual interface.
> >      >
> >      >      Fixes FS#2698.
> >      >
> >      >      Signed-off-by: Old=C5=99ich Jedli=C4=8Dka <oldium.pro@gmail=
.com
> >     <mailto:oldium.pro@gmail.com>>
> >      > ---
> >      >   .../mac80211/files/lib/netifd/wireless/mac80211.sh     | 18
> >     +++++++++++-------
> >      >   1 file changed, 11 insertions(+), 7 deletions(-)
> >      >
> >      > diff --git
> >     a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> >     b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> >      > index f22730c9fc..f59c498215 100644
> >      > ---
> a/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> >      > +++
> b/package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh
> >      > @@ -533,6 +533,7 @@ mac80211_prepare_vif() {
> >      >
> >      >                       NEWAPLIST=3D"${NEWAPLIST}$ifname "
> >      >                       [ -n "$hostapd_ctrl" ] || {
> >      > +                             ap_ifname=3D"${ifname}"
> >      >
> >       hostapd_ctrl=3D"${hostapd_ctrl:-/var/run/hostapd/$ifname}"
> >      >                       }
> >      >               ;;
> >      > @@ -753,13 +754,15 @@ mac80211_setup_vif() {
> >      >       json_get_var vif_enable enable 1
> >      >
> >      >       [ "$vif_enable" =3D 1 ] || action=3Ddown
> >      > -     logger ip link set dev "$ifname" $action
> >      > -     ip link set dev "$ifname" "$action" || {
> >      > -             wireless_setup_vif_failed IFUP_ERROR
> >      > -             json_select ..
> >      > -             return
> >      > -     }
> >      > -     [ -z "$vif_txpower" ] || iw dev "$ifname" set txpower fixe=
d
> >     "${vif_txpower%%.*}00"
> >      > +     if [ "$mode" !=3D "ap" ] || [ "$ifname" =3D "$ap_ifname" ]=
; then
> >      > +             logger ip link set dev "$ifname" $action
> >      > +             ip link set dev "$ifname" "$action" || {
> >      > +                     wireless_setup_vif_failed IFUP_ERROR
> >      > +                     json_select ..
> >      > +                     return
> >      > +             }
> >      > +             [ -z "$vif_txpower" ] || iw dev "$ifname" set
> >     txpower fixed "${vif_txpower%%.*}00"
> >      > +     fi
> >      >
> >      >       case "$mode" in
> >      >               mesh)
> >      > @@ -924,6 +927,7 @@ drv_mac80211_setup() {
> >      >
> >      >       has_ap=3D
> >      >       hostapd_ctrl=3D
> >      > +     ap_ifname=3D
> >      >       hostapd_noscan=3D
> >      >       for_each_interface "ap" mac80211_check_ap
> >      >
> >      >
> >      > _______________________________________________
> >      > lede-commits mailing list
> >      > lede-commits@lists.infradead.org
> >     <mailto:lede-commits@lists.infradead.org>
> >      > http://lists.infradead.org/mailman/listinfo/lede-commits
> >      >
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>
>

--00000000000091cd2105a19a946b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hi John,<div><br></div><div>ok, my issue:=C2=A0<=
a href=3D"https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D269=
8">https://bugs.openwrt.org/index.php?do=3Ddetails&amp;task_id=3D2698</a></=
div><div><br></div><div>Details:</div><div><br></div><div>When virtual acce=
ss points are used (multiple BSSIDS on one physical interface), only the fi=
rst BSSID is assigned to an existing network interface, all other access po=
int&#39;s (BSSIDs) network interfaces are created=C2=A0by hostapd. The orig=
inal=C2=A0<span style=3D"color:rgb(36,41,46);font-size:11.9px;background-co=
lor:rgba(27,31,35,0.05)"><font face=3D"monospace">mac80211.sh</font></span>=
=C2=A0script tries to call <span style=3D"color:rgb(36,41,46);font-family:S=
FMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-siz=
e:11.9px;background-color:rgba(27,31,35,0.05)">ip link set dev &lt;iface&gt=
; up</span>=C2=A0on all interfaces, even on virtual ones, and it tries to s=
et <font face=3D"monospace">txpower</font> too. This works as long as the i=
nterface exists prior to trying to setting it up - when hostapd has enough =
time to create them. The script uses=C2=A0<font face=3D"monospace">sleep 1<=
/font>=C2=A0most probably to give hostapd time to create the interfaces. Bu=
t when the creation of interfaces is delayed for any reason, like is for DF=
S on 5GHz band, the interface is created after one minute (i.e. it takes 60=
 seconds to create virtual interfaces). The DFS on 5GHz works in a way that=
 the driver scans for any possible radar transmitting on the frequency and =
if it does not find any within a minute, the frequency is allowed to be use=
d. In this case the setting-up (<font face=3D"monospace">ip link set dev &l=
t;iface&gt; up</font>) of the interface fails (the interface does not exist=
 yet) and <font face=3D"monospace">wireless_add_vif</font> is not called. M=
y patch ensures that the <font face=3D"monospace">wireless_add_vif</font> i=
s called also for virtual interfaces - those created by hostapd.</div><div>=
<br></div><div>Regards,</div><div>Oldrich.</div><div><br></div></div></div>=
</div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">=C3=BAt 24. 3. 2020 v=C2=A015:05 odes=C3=ADlatel John Cri=
spin &lt;<a href=3D"mailto:john@phrozen.org">john@phrozen.org</a>&gt; napsa=
l:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
what do you setup a device fully managed by hostapd ? I am not sure i <br>
understand what that is. Best if you explain your problem so i can try <br>
to reproduce and fix it.<br>
<br>
to answer your question, in a multi vap setup &quot;wifi reconf&quot; will =
break <br>
with your change as it breaks the symmetry of link up/down calls<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 John<br>
<br>
On 24.03.20 14:55, Old=C5=99ich Jedli=C4=8Dka wrote:<br>
&gt; Hi John,<br>
&gt; <br>
&gt; Are you able to describe what exactly does not work - how to reproduce=
 <br>
&gt; it? Maybe it is simple and obvious to you, but please describe what do=
es <br>
&gt; not work.<br>
&gt; <br>
&gt; I just removed setting interface up and setting txpower on it - when t=
he <br>
&gt; interface is fully managed by hostapd. That looks reasonable to me, bu=
t <br>
&gt; might be wrong as well. At least it made reporting of the interface <b=
r>
&gt; status working, see <a href=3D"https://github.com/openwrt/openwrt/pull=
/2848" rel=3D"noreferrer" target=3D"_blank">https://github.com/openwrt/open=
wrt/pull/2848</a>=C2=A0for <br>
&gt; screen-shots.<br>
&gt; <br>
&gt; Regards,<br>
&gt; Oldrich.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; =C3=BAt 24. 3. 2020 v=C2=A012:10 odes=C3=ADlatel John Crispin &lt;<a h=
ref=3D"mailto:john@phrozen.org" target=3D"_blank">john@phrozen.org</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:john@phrozen.org" target=3D"_blank">john@=
phrozen.org</a>&gt;&gt; napsal:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi<br>
&gt;=C2=A0 =C2=A0 =C2=A0below commit breaks wifi reconf feature and to be h=
onest it looks like<br>
&gt;=C2=A0 =C2=A0 =C2=A0the wrong fix to me.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 John<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; dangole pushed a commit to openwrt/openwrt.gi=
t, branch master:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://git.openwrt.org/23a885bf89=
a204f91e4f17ed96f1a9fc7f50ea34" rel=3D"noreferrer" target=3D"_blank">https:=
//git.openwrt.org/23a885bf89a204f91e4f17ed96f1a9fc7f50ea34</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; commit 23a885bf89a204f91e4f17ed96f1a9fc7f50ea=
34<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Author: Old=C5=99ich Jedli=C4=8Dka &lt;<a hre=
f=3D"mailto:oldium.pro@gmail.com" target=3D"_blank">oldium.pro@gmail.com</a=
><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:oldium.pro@gmail.com" =
target=3D"_blank">oldium.pro@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; AuthorDate: Mon Mar 16 21:00:51 2020 +0100<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 mac80211: do not try to s=
etup hostapd-managed interfaces.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 For virtual access points=
 (when multiple SSIDs are used for one<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 physical AP), there exist=
 one physical network interface and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 multiple virtual interfac=
es, which are fully under control of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 hostapd. When networking =
is setup, the script<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 `/lib/netifd/wireless/mac=
80211.sh` is called, which tries to<br>
&gt;=C2=A0 =C2=A0 =C2=A0bring<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 the interface up by a cal=
l to `ip link set dev &lt;iface&gt; up`. This<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 call might fail for virtu=
al APs, because the virtual interface<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 might not have been creat=
ed by hostapd yet. There are some<br>
&gt;=C2=A0 =C2=A0 =C2=A0artifical<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 delays in the script most=
 probably to handle this, but when DFS<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 channel availability chec=
k on 5GHz band is issued, hostapd can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 delay creating virtual in=
terfaces by a minute.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 In order to fix this (or =
work around it), do not try to<br>
&gt;=C2=A0 =C2=A0 =C2=A0bring the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 interface up (this is res=
ponsibility of hostapd anyway) and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 do not try to set txpower=
 on the virtual interface.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 Fixes FS#2698.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 Signed-off-by: Old=C5=99i=
ch Jedli=C4=8Dka &lt;<a href=3D"mailto:oldium.pro@gmail.com" target=3D"_bla=
nk">oldium.pro@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:oldium.pro@gmail.com" =
target=3D"_blank">oldium.pro@gmail.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0.../mac80211/files/lib/netifd/wir=
eless/mac80211.sh=C2=A0 =C2=A0 =C2=A0| 18<br>
&gt;=C2=A0 =C2=A0 =C2=A0+++++++++++-------<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A01 file changed, 11 insertions(+),=
 7 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; diff --git<br>
&gt;=C2=A0 =C2=A0 =C2=A0a/package/kernel/mac80211/files/lib/netifd/wireless=
/mac80211.sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0b/package/kernel/mac80211/files/lib/netifd/wireless=
/mac80211.sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; index f22730c9fc..f59c498215 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; --- a/package/kernel/mac80211/files/lib/netif=
d/wireless/mac80211.sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +++ b/package/kernel/mac80211/files/lib/netif=
d/wireless/mac80211.sh<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -533,6 +533,7 @@ mac80211_prepare_vif() {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0NEWAPLIST=3D&quot;${NEWAPLIST}$ifname=
 &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[ -n &quot;$hostapd_ctrl&quot; ] || {=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ap_ifname=3D&=
quot;${ifname}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_ctrl=3D&quot;${hostapd_ctrl:-/var/ru=
n/hostapd/$ifname}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -753,13 +754,15 @@ mac80211_setup_vif() {<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0json_get_var vif_en=
able enable 1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$vif_enable=
&quot; =3D 1 ] || action=3Ddown<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0logger ip link set dev &=
quot;$ifname&quot; $action<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0ip link set dev &quot;$i=
fname&quot; &quot;$action&quot; || {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0wireless_setup_vif_failed IFUP_ERROR<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0json_select ..<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0return<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0 =C2=A0 =C2=A0[ -z &quot;$vif_txpower&=
quot; ] || iw dev &quot;$ifname&quot; set txpower fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;${vif_txpower%%.*}00&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0if [ &quot;$mode&quot; !=
=3D &quot;ap&quot; ] || [ &quot;$ifname&quot; =3D &quot;$ap_ifname&quot; ];=
 then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0logger ip link set dev &quot;$ifname&quot; $action<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0ip link set dev &quot;$ifname&quot; &quot;$action&quot; || {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wireless_setup_vif_failed IFUP_ERROR<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0json_select ..<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0[ -z &quot;$vif_txpower&quot; ] || iw dev &quot;$ifname&quot; set<br>
&gt;=C2=A0 =C2=A0 =C2=A0txpower fixed &quot;${vif_txpower%%.*}00&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0fi<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case &quot;$mode&qu=
ot; in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0mesh)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; @@ -924,6 +927,7 @@ drv_mac80211_setup() {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0has_ap=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_ctrl=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0 =C2=A0 =C2=A0ap_ifname=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0hostapd_noscan=3D<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for_each_interface =
&quot;ap&quot; mac80211_check_ap<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; lede-commits mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:lede-commits@lists.infradea=
d.org" target=3D"_blank">lede-commits@lists.infradead.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:lede-commits@lists.inf=
radead.org" target=3D"_blank">lede-commits@lists.infradead.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"http://lists.infradead.org/mailman=
/listinfo/lede-commits" rel=3D"noreferrer" target=3D"_blank">http://lists.i=
nfradead.org/mailman/listinfo/lede-commits</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
&gt; <br>
<br>
</blockquote></div>

--00000000000091cd2105a19a946b--


--===============5288679846617900722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5288679846617900722==--


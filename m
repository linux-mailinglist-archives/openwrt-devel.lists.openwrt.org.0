Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EA41AF652
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 05:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O6g+p9E1afPyQmGI+zuSuXAie2XzypIAMDb4D0hTrCg=; b=VS1EPkWIzq5ic1k+mhpkFG9Me
	6+nW0M5kp/krlRoHPhC2Z+whaLsJ7xI/IfBi5CJlupNDbKtHPN7MkMKlKXl/N0zCe5CwOY9gtU2Dm
	xnBW/H19vKGdp1zMJcllvF7uWpqjbnTNLXZQcdj6zgFXVcW+kFqkIXBeJXDsUw4r3wNodGggDMQDb
	UEuz+U3tFFNbCQM4+leHgX/I5GmdoH7kORvqO0xNSN4kZAvQZUvl/CVjEXUg1imU/FD87kpAT3Q9H
	tOolxD47aJxWIneGETwbw9nxu33zuNMNAwiWt+unDeymWYq++pks1DXBNRbUpFr/sbNQHWKfqOQb8
	WnXPgApMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ0Gi-00085O-FY; Sun, 19 Apr 2020 03:05:16 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ0GP-00082u-T7
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 03:05:00 +0000
Received: by mail-qv1-xf35.google.com with SMTP id t8so1051428qvw.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 20:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QF9pV6IF0XJYVtIO/aseVPbE8kyWWFxIKCH11A1wcoI=;
 b=VC/Nh8ScoPRf4R//kmj999CN+21Y22FKLnsty1+pQny3xBO1klvPd2TInBLXWGpDe9
 oHGd1+iPyl19Mqm2BCLHhLt+VIiiZY84dNtqTsFhBCwLmsk0A173RddNdKYdBnUJ0v4J
 VHE/lwJXzoWRm8MxXLiJRFeJ2hEdO2+upeBW0mZv28y+OHNli0QZTnWJOG7yGEXbD4+Y
 O+ss74g8DoLgkiW4Rdx6KT9q/ZhXtW92z9zrmq3dEKohMjRugLBvVv+fjHiUigHmU1jf
 8jOKtSc8C3mDJ/3JFf6aCoWseg+xYorJpZCCLKBE1Bh5e00hw0VW1hSekO8Oamp61lyE
 kZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QF9pV6IF0XJYVtIO/aseVPbE8kyWWFxIKCH11A1wcoI=;
 b=RVgWhfhXvTTmJiWlo65q+AhMcWM5Iuw9LdrMOQXi5uWZWt8NbqIWuVFT2ilxD6wzjs
 8tAYDviZwFcOv0CawgsK8WgM12O+RDaIAtLFGT1/wosga2p7j9/pnOZnEA7ZX+40s9KY
 GS4yjcWMCtnhpFr01PTExaZJti3DbhPdyhHQvEOpPRmoa1z8N5hTQy4+6ryLO+BRZFcO
 o19akDMMYEMCI7PSO84KpJkkxi2IH568IgeMeteFVQ6YmDU6dULznrIQiU6A7LIRMAMp
 pdZsyCUNdezz8PgPKWVGqSmPDf8QvElGIQp0b79En+woUfUE+WGiQpC5vx8PbDqvIs99
 dbvA==
X-Gm-Message-State: AGi0PuYgYmTpgoNW+SwQxpB5YapBaNjwX/CAxWU05Rb17GpbjrJNMbfi
 6wpCwlI7zlgT/P7Wj21oBo0K1haON2uxqo/XhOw=
X-Google-Smtp-Source: APiQypLOfynZ21NlVwXc53zq5J1IxzEk8VTleep5coLZa+cYiOo0PZaVw6z6RAHskrEOvBWi9PGJuHMV32xaWWh7QQE=
X-Received: by 2002:a0c:a181:: with SMTP id e1mr9614770qva.19.1587265495232;
 Sat, 18 Apr 2020 20:04:55 -0700 (PDT)
MIME-Version: 1.0
References: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
 <CAKiAkGTf01YsVToW=twNFDZzXSbxxuU4mOr=_9YYjZ1u3MHFqQ@mail.gmail.com>
 <CACfEFw_sz8C_bWig8cj79EAcpSoaK+yNcq+GfrA19+Hf8t6_Dw@mail.gmail.com>
 <CAKiAkGSP7S2RHPi3jPPnffhgY9o9fThik4uBhBqSQfMRGKkdrA@mail.gmail.com>
In-Reply-To: <CAKiAkGSP7S2RHPi3jPPnffhgY9o9fThik4uBhBqSQfMRGKkdrA@mail.gmail.com>
From: Wes Turner <wes.turner@gmail.com>
Date: Sat, 18 Apr 2020 23:04:43 -0400
Message-ID: <CACfEFw9dFHPYhyyXwRC63_o=+K_qhkCEfodhrWCYxUGRCbhe=w@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_200457_973577_A0177F3F 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f35 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Possible security issue
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
Cc: e9hack <e9hack@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0221996660789806799=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0221996660789806799==
Content-Type: multipart/alternative; boundary="00000000000001f68205a39c0c5c"

--00000000000001f68205a39c0c5c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe it should be something like:

```bash
groupadd ubus
for user in "root ..."; do
    usermod -a -G ubus "${user}"
done

chgrp ubus /sbin/uci /var/run/ubus.sock
chmod g+rw /var/run/ubus.sock
chmod g+rwx /sbin/uci
chmod o-rwx /sbin/uci /var/run/ubus.sock
```

What would this break?
https://openwrt.org/docs/techref/ubus

...

Better sandboxing in procd than chroot could be an objective. IDK where the
previous discussions are?
https://openwrt.org/docs/techref/procd

cgroups without systemd:
https://wiki.archlinux.org/index.php/cgroups#With_libcgroup

Notes re: SELinux (and containers)
https://github.com/rancher/k3s/issues/1372#issuecomment-581797716

https://blog.openshift.com/securing-kubernetes/
>
>     The main thing to understand about SELinux integration with OpenShift
>> is that, by default, OpenShift runs each container as a random uid and i=
s
>> isolated with SELinux MCS labels. The easiest way of thinking about MCS
>> labels is they are a dynamic way of getting SELinux separation without
>> having to create policy files and run restorecon.
>>
>>     If you are wondering why we need SELinux and namespaces at the same
>> time, the way I view it is namespaces provide the nice abstraction but a=
re
>> not designed from a security first perspective. SELinux is the brick wal=
l
>> that=E2=80=99s going to stop you if you manage to break out of (accident=
ally or on
>> purpose) from the namespace abstraction.
>>
>>     CGroups is the remaining piece of the puzzle. Its primary purpose
>> isn=E2=80=99t security, but I list it because it regulates that differen=
t
>> containers stay within their allotted space for compute resources (cpu,
>> memory, I/O). So without cgroups, you can=E2=80=99t be confident your ap=
plication
>> won=E2=80=99t be stomped on by another application on the same node.
>>
>
Everybody's doing it:
https://en.wikipedia.org/wiki/Seccomp#Software_using_seccomp_or_seccomp-bpf



On Sat, Apr 18, 2020 at 10:22 PM Joel Wir=C4=81mu Pauling <joel@aenertia.ne=
t>
wrote:

> I'm sorry for wading into this. As with any security related discussion
> strawpeople can be made to support any particular thread pulling into
> infinity.
>
> Would I love to see namespaces used as part of the base Openwrt
> architecture; absolutely. It's been discussed in the past; routing in
> particular would benefit immensely from this ; use of different routing
> table ID's is a step towards that, but complications like passing device
> id's in and out of namespaces however for the switch side of things is
> problematic and adds additional overhead as will it introduce issues at t=
he
> expense of separation and flexibility.
>
> That potentially could mitigate some of your concerns, but I feel the
> preposition for me is openwrt is not multi-user by default OOTB for most
> (if not all) targets; and if you want it to be you can.
>
> So fiddling inode bitmasks is not addressing anything IMNSHO because of
> that fact.
>
>
>
>
>
>
> On Sat, 18 Apr 2020 at 00:50, Wes Turner <wes.turner@gmail.com> wrote:
>
>> From a least privileges perspective:
>>
>> - chmod o-rwx /var/run/hostapd-phyX.conf
>> - chmod o-x uci # setfacl?
>>
>> Compromise of a service running as a different user should not result in
>> disclosure of sensitive keys only necessary for different services.
>>
>> https://openwrt.org/docs/guide-user/security/security-features mentions
>> procd jail / chroot?
>>
>> AFAIU, LXC is not available in the default kernel builds in any router?
>> LXC would be an additional layer of defenses over and above chroot, whic=
h
>> isn't seccomp
>>
>> On Fri, Apr 17, 2020, 5:13 AM Joel Wir=C4=81mu Pauling <joel@aenertia.ne=
t>
>> wrote:
>>
>>> No. If you have physical access to the node and/or a valid login as
>>> Admin then any form of PSK is vulnerable.
>>>
>>> If you are concerned about PSK's being exposed then you have the option
>>> to run 802.1x auth and issue issues tokens out of radius/IDM that is
>>> secured elsewhere than on the AP itself.
>>>
>>> On Fri, 17 Apr 2020 at 20:16, e9hack <e9hack@gmail.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> the configuration files for hostapd (/var/run/hostapd-phyX.conf) are
>>>> readable for everyone. This means everyone can read the wifi passwords=
. If
>>>> a non privileged user calls 'uci show wireless', he will also get all =
wifi
>>>> passwords. This possible e.g. for user nobody and dnsmasq.
>>>>
>>>> Is this a a security issue?
>>>>
>>>> Regards,
>>>> Hartmut
>>>>
>>>> _______________________________________________
>>>> openwrt-devel mailing list
>>>> openwrt-devel@lists.openwrt.org
>>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>>
>>

--00000000000001f68205a39c0c5c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Maybe it should be something like:</div><div><br></di=
v><div>```bash<br></div><div>groupadd ubus</div><div><div>for user in &quot=
;root ...&quot;; do<br></div><div>=C2=A0=C2=A0=C2=A0 usermod -a -G ubus &qu=
ot;${user}&quot;</div><div>done</div><div><br></div></div><div>chgrp ubus /=
sbin/uci /var/run/ubus.sock</div><div>chmod g+rw /var/run/ubus.sock</div><d=
iv>chmod g+rwx /sbin/uci<br></div><div>chmod o-rwx /sbin/uci /var/run/ubus.=
sock</div><div>```<br></div><div><br></div><div>What would this break?</div=
><div><a href=3D"https://openwrt.org/docs/techref/ubus">https://openwrt.org=
/docs/techref/ubus</a></div><div><br></div><div>...<br></div><div><br></div=
><div>Better sandboxing in procd than chroot could be an objective. IDK whe=
re the previous discussions are?<br></div><div><a href=3D"https://openwrt.o=
rg/docs/techref/procd">https://openwrt.org/docs/techref/procd</a></div><div=
><br></div><div>cgroups without systemd:<br></div><div><a href=3D"https://w=
iki.archlinux.org/index.php/cgroups#With_libcgroup">https://wiki.archlinux.=
org/index.php/cgroups#With_libcgroup</a></div><div><br></div><div>Notes re:=
 SELinux (and containers)</div><div><a href=3D"https://github.com/rancher/k=
3s/issues/1372#issuecomment-581797716">https://github.com/rancher/k3s/issue=
s/1372#issuecomment-581797716</a><br><br><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><a href=3D"https://blog.openshift.com/securing-kubernetes/"=
>https://blog.openshift.com/securing-kubernetes/</a><br><br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 The main thing to understa=
nd about SELinux integration with OpenShift is that, by default, OpenShift =
runs each container as a random uid and is isolated with SELinux MCS labels=
. The easiest way of thinking about MCS labels is they are a dynamic way of=
 getting SELinux separation without having to create policy files and run r=
estorecon.<br><br>=C2=A0 =C2=A0 If you are wondering why we need SELinux an=
d namespaces at the same time, the way I view it is namespaces provide the =
nice abstraction but are not designed from a security first perspective. SE=
Linux is the brick wall that=E2=80=99s going to stop you if you manage to b=
reak out of (accidentally or on purpose) from the namespace abstraction.<br=
><br>=C2=A0 =C2=A0 CGroups is the remaining piece of the puzzle. Its primar=
y purpose isn=E2=80=99t security, but I list it because it regulates that d=
ifferent containers stay within their allotted space for compute resources =
(cpu, memory, I/O). So without cgroups, you can=E2=80=99t be confident your=
 application won=E2=80=99t be stomped on by another application on the same=
 node.<br></blockquote></blockquote><div><br></div><div>Everybody&#39;s doi=
ng it:</div><div><a href=3D"https://en.wikipedia.org/wiki/Seccomp#Software_=
using_seccomp_or_seccomp-bpf">https://en.wikipedia.org/wiki/Seccomp#Softwar=
e_using_seccomp_or_seccomp-bpf</a> </div><br><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 18, 2020=
 at 10:22 PM Joel Wir=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.n=
et">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif">I&#39;m sorry for wading into this. As wit=
h any security related discussion strawpeople can be made to support any pa=
rticular thread pulling into infinity. <br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif">Would I love to see namesp=
aces used as part of the base Openwrt architecture; absolutely. It&#39;s be=
en discussed in the past; routing in particular would benefit immensely fro=
m this ; use of different routing table ID&#39;s is a step towards that, bu=
t complications like passing device id&#39;s in and out of namespaces howev=
er for the switch side of things is problematic and adds additional overhea=
d as will it introduce issues at the expense of separation and flexibility.=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif">That potentially could mitigate some of your concerns, but I feel=
 the preposition for me is openwrt is not multi-user by default OOTB for mo=
st (if not all) targets; and if you want it to be you can.<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">So fidd=
ling inode bitmasks is not addressing anything IMNSHO because of that fact.=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verda=
na,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sat, 18 Apr 2020 at 00:50, Wes Turner=
 &lt;<a href=3D"mailto:wes.turner@gmail.com" target=3D"_blank">wes.turner@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto"><div>From a least privileges perspective:</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">- chmod o-rwx /var/run/hostapd-=
phyX.conf</div><div dir=3D"auto">- chmod o-x uci # setfacl?=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Compromise of a service running a=
s a different user should not result in disclosure of sensitive keys only n=
ecessary for different services.=C2=A0</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto"><a href=3D"https://openwrt.org/docs/guide-user/security/secu=
rity-features" target=3D"_blank">https://openwrt.org/docs/guide-user/securi=
ty/security-features</a> mentions procd jail / chroot?<br></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">AFAIU, LXC is not available in the defau=
lt kernel builds in any router? LXC would be an additional layer of defense=
s over and above chroot, which isn&#39;t seccomp</div><div dir=3D"auto"><br=
><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Apr 17, 2020, 5:13 AM Joel Wir=C4=81mu Pauling &lt;<a href=3D"m=
ailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">No.=
 If you have physical access to the node and/or a valid login as Admin then=
 any form of PSK is vulnerable. <br></div><div class=3D"gmail_default" styl=
e=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif">If you are concerned about PSK&#3=
9;s being exposed then you have the option to run 802.1x auth and issue iss=
ues tokens out of radius/IDM that is secured elsewhere than on the AP itsel=
f.=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, 17 Apr 2020 at 20:16, e9hack &lt;<a href=3D"mailt=
o:e9hack@gmail.com" rel=3D"noreferrer" target=3D"_blank">e9hack@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi=
,<br>
<br>
the configuration files for hostapd (/var/run/hostapd-phyX.conf) are readab=
le for everyone. This means everyone can read the wifi passwords. If a non =
privileged user calls &#39;uci show wireless&#39;, he will also get all wif=
i passwords. This possible e.g. for user nobody and dnsmasq.<br>
<br>
Is this a a security issue?<br>
<br>
Regards,<br>
Hartmut<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" targe=
t=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" rel=3D"noreferrer" targe=
t=3D"_blank">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div>

--00000000000001f68205a39c0c5c--


--===============0221996660789806799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0221996660789806799==--


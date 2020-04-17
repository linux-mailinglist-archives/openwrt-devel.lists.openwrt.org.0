Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B95E1ADD9B
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 14:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YUtwUoNVeyKFNUDG+46lV1apss3ed5mvfJqX58yLCkE=; b=GlwaQXmxzSRcpIPejMMGirXZk
	RkyL0jr/SVoyItP+ZRpVoWCGAlSLH+ZiegRayPtWMTW+pId+SdpX/VBxPBxmCwYcW746Mg8GYlSyH
	gX8gWpwTjTrhFRv1Z3pmT5UfFRU2u1/U1Vvron+NNDXWriBXx60zCXu1kH6+XiEF/2CxPqwhlOlv9
	wSgntsjK/mT+Gl5EI43J/kWH6Pk+puPFZq3g7qluVvPIZcOaE2HuT+gxy0Y7SN6AWRByKVD8roSms
	Bq6Ta4DBrgDyqt2pH9zWS+E4kAKTwzpXIz52ktGj9aOzDjAHvih7d4bFwfWxehlLqfr6upHDGeq0b
	jl7fIRgZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQSO-0006HK-7e; Fri, 17 Apr 2020 12:50:56 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQSH-0006Gw-Kj
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 12:50:51 +0000
Received: by mail-qt1-x82f.google.com with SMTP id x8so589367qtp.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 05:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8uGtI4vvbnl7ooKG8NgVaVeTwB0wc6sFWMYZbJ4rz9g=;
 b=AVYzrrmgJ+IhnTNvTCh6K5basAxPriK8wt19jVZYbEGE85voaMFWP+kyo+BdonPzg0
 Dp63sXkTonnjk+UAvc2FU3GxHXjptcM9SKCiujkqa13z3ucXLtBOE5FAZ41Se5Qxfqh0
 BslLbbiIVARGBXVMq8khN8S9OegrF3pvvb5vRN/cghu1o4JQWYPqvWts+D2KD1B/Vht+
 Hu5UmgnR1J8Xgpgq1FKKkjVAotmZeXc3ZNqbO7xMDbx0YcvuF9cUTSq81qhXtD6h+jAT
 yVO5NQG+kngZRk4cWiSon6ZzkVrWX5yxKXdEW1RPsKwp1EKMYfJWVLm+IqyUk5bP6aPs
 34Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8uGtI4vvbnl7ooKG8NgVaVeTwB0wc6sFWMYZbJ4rz9g=;
 b=M3KB77qcXUKSLjqocOVmDR9ClXLcCM0JHSimhhIiQTdERFlGVQyCqBjXWIq7ZLdJ8g
 /ANyeWyxlhmbJhoCuTYmLQYVpvTtQImS8iqd09ufpGLhkjyBuqLUlc2XKtT/2r3q8uQA
 /bAzbke1TLwzNLKGN8c9hUbfrGXjc/pF1EjI4oj67/AYtCqSjsd+5n/5hq8LCcEriJPv
 HcltIrpXQyikKz6Z3jdd7IcQK2cXqqFzZKO98qv6JR/8Z6cnWclK9/fQkxtTSH4ok/2E
 6O4d5hUwC4fLIEQ9E9IKMUcUKw07Q8c6NtyTES+egIorFQ24lL6QRBCmXLrAIhhlw9oX
 cq9w==
X-Gm-Message-State: AGi0PuZA6rCL5xTMxR794hwUXvjH6iDYwBWmb1F5ODdPnN5b4LR9b27p
 A0WkLIaQQh/KzeNFgCePKCL0ZBysbGh5azJx3eQ=
X-Google-Smtp-Source: APiQypKAqZMJwyFa+0E9VJ4b9UmOo0bj3PO4K9PdTuWX2j0fBfBfVtMUmL4Ix5EM4fsunaRZCRIWrnQ6+RboEDP+QbA=
X-Received: by 2002:ac8:70c:: with SMTP id g12mr2651922qth.71.1587127847908;
 Fri, 17 Apr 2020 05:50:47 -0700 (PDT)
MIME-Version: 1.0
References: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
 <CAKiAkGTf01YsVToW=twNFDZzXSbxxuU4mOr=_9YYjZ1u3MHFqQ@mail.gmail.com>
In-Reply-To: <CAKiAkGTf01YsVToW=twNFDZzXSbxxuU4mOr=_9YYjZ1u3MHFqQ@mail.gmail.com>
From: Wes Turner <wes.turner@gmail.com>
Date: Fri, 17 Apr 2020 08:50:36 -0400
Message-ID: <CACfEFw_sz8C_bWig8cj79EAcpSoaK+yNcq+GfrA19+Hf8t6_Dw@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_055049_705094_E04BDCB0 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============7597855316165154162=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7597855316165154162==
Content-Type: multipart/alternative; boundary="0000000000009679ec05a37bff78"

--0000000000009679ec05a37bff78
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From a least privileges perspective:

- chmod o-rwx /var/run/hostapd-phyX.conf
- chmod o-x uci # setfacl?

Compromise of a service running as a different user should not result in
disclosure of sensitive keys only necessary for different services.

https://openwrt.org/docs/guide-user/security/security-features mentions
procd jail / chroot?

AFAIU, LXC is not available in the default kernel builds in any router? LXC
would be an additional layer of defenses over and above chroot, which isn't
seccomp

On Fri, Apr 17, 2020, 5:13 AM Joel Wir=C4=81mu Pauling <joel@aenertia.net> =
wrote:

> No. If you have physical access to the node and/or a valid login as Admin
> then any form of PSK is vulnerable.
>
> If you are concerned about PSK's being exposed then you have the option t=
o
> run 802.1x auth and issue issues tokens out of radius/IDM that is secured
> elsewhere than on the AP itself.
>
> On Fri, 17 Apr 2020 at 20:16, e9hack <e9hack@gmail.com> wrote:
>
>> Hi,
>>
>> the configuration files for hostapd (/var/run/hostapd-phyX.conf) are
>> readable for everyone. This means everyone can read the wifi passwords. =
If
>> a non privileged user calls 'uci show wireless', he will also get all wi=
fi
>> passwords. This possible e.g. for user nobody and dnsmasq.
>>
>> Is this a a security issue?
>>
>> Regards,
>> Hartmut
>>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000009679ec05a37bff78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>From a least privileges perspective:</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">- chmod o-rwx /var/run/hostapd-phyX.c=
onf</div><div dir=3D"auto">- chmod o-x uci # setfacl?=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Compromise of a service running as a =
different user should not result in disclosure of sensitive keys only neces=
sary for different services.=C2=A0</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><a href=3D"https://openwrt.org/docs/guide-user/security/security=
-features">https://openwrt.org/docs/guide-user/security/security-features</=
a> mentions procd jail / chroot?<br></div><div dir=3D"auto"><br></div><div =
dir=3D"auto">AFAIU, LXC is not available in the default kernel builds in an=
y router? LXC would be an additional layer of defenses over and above chroo=
t, which isn&#39;t seccomp</div><div dir=3D"auto"><br><div class=3D"gmail_q=
uote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 17, 20=
20, 5:13 AM Joel Wir=C4=81mu Pauling &lt;<a href=3D"mailto:joel@aenertia.ne=
t">joel@aenertia.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif">No. If you have physical access to the node and/or a valid log=
in as Admin then any form of PSK is vulnerable. <br></div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">If you are conc=
erned about PSK&#39;s being exposed then you have the option to run 802.1x =
auth and issue issues tokens out of radius/IDM that is secured elsewhere th=
an on the AP itself.=C2=A0<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, 17 Apr 2020 at 20:16, e9hack &l=
t;<a href=3D"mailto:e9hack@gmail.com" target=3D"_blank" rel=3D"noreferrer">=
e9hack@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
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
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" rel=3D=
"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman=
/listinfo/openwrt-devel</a><br>
</blockquote></div></div></div>

--0000000000009679ec05a37bff78--


--===============7597855316165154162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7597855316165154162==--


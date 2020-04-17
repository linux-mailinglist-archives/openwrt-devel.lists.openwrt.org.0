Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA821AD98E
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 11:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PbxusLnY7JTywE0Uc0D/nCaNxAArmFs7wSCtXvgalhA=; b=NxBpvAS5y9mfQE/cJBU0/IDK7
	xuOAbLXcxKiGE21IpXxk36ylp9bjeNTHxV3hH8uBhUITqJwkaJNcWhDMbjDImFA8x8kBJFf7iyQYE
	nWnTpKa7gXw8SkDrTNZK1KT/kb97vJKdfqw35ME4zv/yyQ2VIMS8t9jR0CD4z4nSbqFYsw4P4sKzl
	Aq9IYSpvQ+K6kHaNcH0t2fznC9KshOdCRDNhPRmUIgvth2FJRYGsDDPJWnnzxsBt4ijqPRoVEdZVA
	kOt3NrpPlNAIWkrXCZKg6rQuHhzvm8IdkOzUNaOtmujD+rWiBxGIA3t2whCiBpnWaGyNP1z7Pbz7Y
	lt9NRZBlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPN3k-0005nb-TD; Fri, 17 Apr 2020 09:13:16 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPN3b-0005n9-4v
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 09:13:11 +0000
Received: by mail-yb1-xb32.google.com with SMTP id n188so692309ybc.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 02:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bH3CX23JBQkS1xmjguFdjMEM30s/Q46VNp9luiuywZ0=;
 b=ENBm7igSBSKZdjILYGuPm937hK8oOnYQYQfnJ/jfbxEl1wZT5XrnrJVImwUFnWlSdO
 iJRAGwLqFdUvefO/uuofVGcCQ7Edy9dD8jBNkzedzfS7qA3dIB8K1jHFA2E568wUDry0
 LHFcxlQhVVimJjwPmptsicsnq5yWKxlADgo6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bH3CX23JBQkS1xmjguFdjMEM30s/Q46VNp9luiuywZ0=;
 b=ZvN6CC9PYjvbpQKW3QjtaDCQ27W8KLzOPttdVPkFY+SM/4cD4g5WJOode+/Yg2E6ck
 O7uijCBYwkBAV7Ca3zfz0H2KlIdXypU79zmZNWSjVutBOHh56XC/Dr2iOyj4EVWkLnY+
 lTWVPjyfl70dLNcjQsQZSU/7trYhbawcV/Y+z/Z5RgycGa/sqALPIz/CYs6yv+2wzwDT
 lWUzc2I1C9DxJ4DIGcEirYD3oQrZHlDc+0I0GwodQ/s28XeWZthFHcZoRESMDGQ3iqPe
 lSvt23QcsGXnQTklMkDalmHEUwKTyvKIOY4Al0v8K9+RRBQo93oKw7Jl9bikzxsCzuOM
 gNCg==
X-Gm-Message-State: AGi0PuYTnSM3LuF2905V7y0fVZuDWU1W2c9qrYX4eUnMukyIMhHesiTZ
 xonHPm10s3Sc0tlVP/DKxl4hPOoSQ3L+kOvTzJdyYA==
X-Google-Smtp-Source: APiQypIirHNkDjSbz+0Xz2QB49pPXD21LRBQoUOwA+8Qxt+4HEnMVwPUrm2h3JazY1+gLfZVpcAVHJtYsHUqVkqjbFw=
X-Received: by 2002:a25:5f0c:: with SMTP id t12mr3879255ybb.254.1587114785625; 
 Fri, 17 Apr 2020 02:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
In-Reply-To: <22123491-a7af-9ece-5340-a522580c67e0@gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Fri, 17 Apr 2020 21:12:54 +1200
Message-ID: <CAKiAkGTf01YsVToW=twNFDZzXSbxxuU4mOr=_9YYjZ1u3MHFqQ@mail.gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_021307_323423_EEF106B4 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b32 listed in]
 [list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============3282323328185663235=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3282323328185663235==
Content-Type: multipart/alternative; boundary="00000000000003f0f205a378f5d4"

--00000000000003f0f205a378f5d4
Content-Type: text/plain; charset="UTF-8"

No. If you have physical access to the node and/or a valid login as Admin
then any form of PSK is vulnerable.

If you are concerned about PSK's being exposed then you have the option to
run 802.1x auth and issue issues tokens out of radius/IDM that is secured
elsewhere than on the AP itself.

On Fri, 17 Apr 2020 at 20:16, e9hack <e9hack@gmail.com> wrote:

> Hi,
>
> the configuration files for hostapd (/var/run/hostapd-phyX.conf) are
> readable for everyone. This means everyone can read the wifi passwords. If
> a non privileged user calls 'uci show wireless', he will also get all wifi
> passwords. This possible e.g. for user nobody and dnsmasq.
>
> Is this a a security issue?
>
> Regards,
> Hartmut
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000003f0f205a378f5d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">No. If you have physical access to the node and/or a valid logi=
n as Admin then any form of PSK is vulnerable. <br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif">If you are concern=
ed about PSK&#39;s being exposed then you have the option to run 802.1x aut=
h and issue issues tokens out of radius/IDM that is secured elsewhere than =
on the AP itself.=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, 17 Apr 2020 at 20:16, e9hack &lt;<=
a href=3D"mailto:e9hack@gmail.com">e9hack@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
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
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--00000000000003f0f205a378f5d4--


--===============3282323328185663235==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3282323328185663235==--


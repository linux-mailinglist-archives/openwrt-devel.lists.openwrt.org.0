Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204496C20
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 00:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-Id:In-Reply-To:To:References:Date:Mime-Version:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=27SNd2fEGcquu20jKVrTY0rxiq41rAvrbWvUiqRuV48=; b=Zn7wgd4MaVudsOrCoM3chUb9N
	hI5t/3dYuqtL1B5a5tkVHZE2KwLKBvhKIwzF3g6QPwzwXWDrNLQeXAkY6h+VPPFouQGfM2+t2RJMV
	3Yj5sbvEJtO/bzDL+pXK8dGSi1qtkkoAFRZH9I8FyKxlojTNURSJkrxfkHCw/93XE5Y6bQy9tX7cF
	J4HeW1qJGLWCh4yAp0YkVbx/pTAlN+aVn4xwvVrcZlmBDIsEs09HsI63z6CY8IN+h7lQotixz8dP0
	FEKQwIjb6tmawqqk7z56uhCsKfppvR4oe+YWOm1Ju5HY/UAJr6GTHFuN3bLVloLIJPammzcJP0e61
	lvWQpOjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0CYV-0002JS-Uf; Tue, 20 Aug 2019 22:24:43 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CYN-0002J6-OK
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 22:24:37 +0000
Received: by mail-qt1-x832.google.com with SMTP id 44so587533qtg.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 15:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:mime-version:subject:date:references:to:in-reply-to:message-id;
 bh=YoggAViv3ILr3ONAJJabnhuLPwLfonjApLwrYRWcQqg=;
 b=IdHsKQA0+hCyCFMmQlq6oQ7Y1HSAj/XPQV13dYTgweTCkIoMlL5PQ8oUrhNvEm5un5
 ILC5u3ww3eJhmKxNl1jsCOCb7dA8CghNKQNK+kfUB74tvXcwwynr1gBOYD4QsmhD0+9t
 HSX0oqevFdKya5ha7RB9Da6duu9/uWn9rPy/MEjdPkPOhO0sqnFpi91rPO/IahGdpCUH
 V4t+dfXFoy84tlud8rxSnP7e6FUJClRMK8L5DKDI2hQlCQcmyK1D+SokRo/vcSArEpPq
 LWB7GZbD7+pzUv7+BZmNHR08kuDz+hN4zPtwJqnu/OQIcjL8DXTp9xWeM8bwnI9/emTT
 rNxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:mime-version:subject:date:references:to
 :in-reply-to:message-id;
 bh=YoggAViv3ILr3ONAJJabnhuLPwLfonjApLwrYRWcQqg=;
 b=I+z9wa4bLMrM02RuxhTU53RjLHzYpXz8Ixa74eZTZLjHG9cll2f1HEZ6fp3evpU7Gh
 R19A4TVc40VM5k2mn/f8pAkWAgfjz13WUZ/re70LtekwtDwagqO04b2YVy4niIBGXaBN
 CIamLBEkFqVnRg8Q87rcqYPBuKQ5g+vrtaOuDGCwXk3bdYNubjxQh6jskr+cVnmUqOir
 BCv0nCU2WfUSWyO4Xji3pbCqroqw/+9wmCj1XK8VdE61chHHEWKO+xNtjGGqLqW6mDlK
 75s6tWN3BxCcsR3dEPdVs4XsA44KN59vqtWY63o3PkuirkXnpzNcXsxKbjxTZbFdcv1X
 fE8Q==
X-Gm-Message-State: APjAAAV9IrcRtHsUAC1YDA83hERA+hNHAfLVQLYeyLUEklW+Q3JCXrFn
 BXGj7uab9xuG1tY1lUeRLuZeaO4I
X-Google-Smtp-Source: APXvYqyqpk3WKKdrD90lqnpqJzUHodZSuBXSM/mll8DqmJNiBMRHkxXZxHdVpo7U9kBY2M61EWrI+g==
X-Received: by 2002:aed:3ee9:: with SMTP id o38mr28098009qtf.193.1566339872401; 
 Tue, 20 Aug 2019 15:24:32 -0700 (PDT)
Received: from richs-mbp-10337.lan ([70.16.98.90])
 by smtp.gmail.com with ESMTPSA id i3sm4913365qta.96.2019.08.20.15.24.31
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 15:24:31 -0700 (PDT)
From: Rich Brown <richb.hanover@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Tue, 20 Aug 2019 18:24:30 -0400
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
 <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
 <178FDDAC-A0CD-4FC3-B8F7-642067E9FFD1@gmail.com>
 <CAKxU2N-07kM6PRQa=WESF6W=aa6gSMG-hyoFJG+ShiFqFhD+Og@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <CAKxU2N-07kM6PRQa=WESF6W=aa6gSMG-hyoFJG+ShiFqFhD+Og@mail.gmail.com>
Message-Id: <9C18EC22-5234-4C2F-BC79-F86E7B6D962C@gmail.com>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_152435_825230_5FD51444 
X-CRM114-Status: UNSURE (   4.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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
Content-Type: multipart/mixed; boundary="===============4550506738319907375=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4550506738319907375==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_468CE6E7-E43E-4C3D-865E-3D3FBDB75765"


--Apple-Mail=_468CE6E7-E43E-4C3D-865E-3D3FBDB75765
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 20, 2019, at 5:32 PM, Rosen Penev <rosenp@gmail.com> wrote:
>> Can anyone speak to whether OpenWrt builds use any/all of those =
techniques called out to provide additional security? OpenWrt's modern =
kernel provides a bunch of security. That may be good enough, even if =
builds don't use all those techniques. And if we have implemented them, =
we can further differentiate ourselves from vendor firmware...Thanks.
> OpenWrt uses several flags like -fstack-protector and format
> hardening...

Excellent! That covers a couple of the flags listed below. Can we say =
anything about any of the other tests?

> ... Issues are more nuanced than this though. These same people
> several months ago mentioned a serious ASLR weakness with MIPS.
> Patches went in the kernel for it.

Does this mean that snapshot builds (with current kernels) now protect =
against that MIPS vulnerability? What about the stable builds?

> There are probably more issues like
> those for different platforms.

> At the end of the day, most people use x86 and ARM. That's where most
> of the eyes are.

There are a lot of experts on various architectures on this list. Can =
they speak to other issues?

Late entry: I was going to volunteer to start a wiki page for this =
information, but I started to read the Security page =
(https://openwrt.org/docs/guide-developer/security =
<https://openwrt.org/docs/guide-developer/security>#os_and_package_hardeni=
ng) and see that it speaks directly to these issues:

- the checksec.sh script seems to look for the flags mentioned below
- there's a list of build-hardening options for the compiler
- and more...=20

What statements/assertions can we make about whether these are used to =
create release or snapshot builds? Thanks to all who can contribute =
info.

Rich

>>>> My questions were more about OpenWrt. How would our current builds =
stack up under the criteria used in the report's table? It listed:
>>>>=20
>>>> - Stack Guards
>>>> - ASLR
>>>> - RELRO
>>>> - Fortify SRC
>>>> - Non-Exec Stack
>>>>=20
>>>> And are there other security practices that we enforce that would =
make an OpenWrt system more secure?


--Apple-Mail=_468CE6E7-E43E-4C3D-865E-3D3FBDB75765
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 20, 2019, at 5:32 PM, Rosen Penev &lt;<a =
href=3D"mailto:rosenp@gmail.com" class=3D"">rosenp@gmail.com</a>&gt; =
wrote:</div><div class=3D""><div class=3D"Singleton"><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">Can anyone speak to whether =
OpenWrt builds use any/all of those techniques called out to provide =
additional security? OpenWrt's modern kernel provides a bunch of =
security. That may be good enough, even if builds don't use all those =
techniques. And if we have implemented them, we can further =
differentiate ourselves from vendor firmware...Thanks.<br =
class=3D""></blockquote><span style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">OpenWrt uses several flags like =
-fstack-protector and format</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" =
class=3D"">hardening...</span></div></div></blockquote><div><br =
class=3D""></div>Excellent! That covers a couple of the flags listed =
below. Can we say anything about any of the other tests?</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"Singleton"><span style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">... Issues are more nuanced than this though. =
These same people</span><br style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">several months ago mentioned a serious =
ASLR weakness with MIPS.</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">Patches went in the kernel for =
it. </span></div></div></blockquote><div><br class=3D""></div>Does this =
mean that snapshot builds (with current kernels) now protect against =
that MIPS vulnerability? What about the stable builds?</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"Singleton"><span style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">There are probably more issues like</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">those for different =
platforms.</span></div></div></blockquote><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"Singleton"><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">At the end of the day, most =
people use x86 and ARM. That's where most</span><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">of the eyes are.</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""></div></div></blockquote><div><br class=3D""></div>There are =
a lot of experts on various architectures on this list. Can they speak =
to other issues?</div><div><br class=3D""></div><div>Late entry: I was =
going to volunteer to start a wiki page for this information, but I =
started to read the Security page (<a =
href=3D"https://openwrt.org/docs/guide-developer/security" =
class=3D"">https://openwrt.org/docs/guide-developer/security</a>#os_and_pa=
ckage_hardening) and see that it speaks directly to these =
issues:</div><div><br class=3D""></div><div>- the checksec.sh script =
seems to look for the flags mentioned below</div><div>- there's a list =
of build-hardening options for the compiler</div><div>- and =
more...&nbsp;</div><div><br class=3D""></div><div>What =
statements/assertions can we make about whether these are used to create =
release or snapshot builds? Thanks to all who can contribute =
info.</div><div><br class=3D""></div><div>Rich<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"Singleton"><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D""><blockquote type=3D"cite" =
class=3D""><blockquote type=3D"cite" class=3D"">My questions were more =
about OpenWrt. How would our current builds stack up under the criteria =
used in the report's table? It listed:<br class=3D""><br class=3D"">- =
Stack Guards<br class=3D"">- ASLR<br class=3D"">- RELRO<br class=3D"">- =
Fortify SRC<br class=3D"">- Non-Exec Stack<br class=3D""><br =
class=3D"">And are there other security practices that we enforce that =
would make an OpenWrt system more secure?<br =
class=3D""></blockquote></blockquote></blockquote></div></div></blockquote=
></div><br class=3D""></body></html>=

--Apple-Mail=_468CE6E7-E43E-4C3D-865E-3D3FBDB75765--


--===============4550506738319907375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4550506738319907375==--


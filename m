Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DB99AE72
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 13:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qr3NMEtDlXvuNRFHpOvfHInqGiKY+GPWLoEkHkCyUlY=; b=tucFad18rYpTp9PPQjiKNDhfF
	40CkwNdCk/UEbZzeEfJFkHIsVVUsR0VgtSlgpcmqBSF7BxgNgqmfcV+GN94RNx9P94HOyTq5zmKxN
	+A31FkG3GHy27twT31FTccFBoE5ezHihJeo8GlZQUD524wQCJNvoLY8KmMfTWWDwzA+88Ha4DRn2N
	YXoKkDqMne/GppaxBfIvsrYEk7vv1OkQ24vEWvn3Or7MSdkmOIbWOAL37SF7M3p3dKEUIff3O3Eko
	ZBj6hhq3IIZ1lyqrZCbD+7gpRno/mUHeGtSA1HQc5Qsjn2O+8ut+rzAmti7n4ehA2sF5woBLpcuIN
	/l8oaHhYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i186f-0007mQ-6x; Fri, 23 Aug 2019 11:51:49 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i186X-0007lc-66
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 11:51:44 +0000
Received: by mail-vs1-xe29.google.com with SMTP id j25so6008349vsq.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 04:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=EeDZ2dDowOUFbiGSA3K7JL96dJ9BN7DBmT/WdMtcZkI=;
 b=dfqD+SyDhEh2WBxryKQ6lBoCTxQCMk+sfOmd1E3DsU7IfghUZXhrf4AYYV8Q6+yN46
 HBEqBMBIUqDjZKZBHGgrBmSxuVkJ9Q+Aaj+EElGwtb+3tLh/LufSBNuSMb3G5Bwn4gzH
 gyAb8wMbvBdS+HSQQ7Kl4wTRZHcfELcgA4Uu7/1ki2heRGrkjgo1nk2E5BHNpfe4h0LH
 G4hHxG1v4tKXjHY2KhrJo5g7MGrmSr+vsXbxaH5Ac5wBlgaS7xwuC3GjxvbxJ6DqvQjI
 UcgGMZwz3TmFrMEgJZ/2qOZzBv5oxkVrj5lwvFLYYRrXatwFqzDZDtoUW36OPaA8IdVf
 uumA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=EeDZ2dDowOUFbiGSA3K7JL96dJ9BN7DBmT/WdMtcZkI=;
 b=j6aDrZXOc1su8B1kqdxlf0u3Q2LKoLSOKTkodG+aeUwlKm97bFD4zbIBiwO4cLakia
 mBd9RkedvdmcxlMITF3i5JyawIatVfgW8Jh5QXq3eiozBMRctChgbMt3BAPzW+1zeecr
 9wKlOHIuym09V7vEawjgBOUWkXYQNbmdC9Nn7ol9BKTYI7JD6A3SA+QOg8454ISnHPW9
 dfJQoVUy9Pp6d6UqztIZWoAU6KMK82ntaNLuoCKDArM9KRuq0KhQH3qeuKAUZ/F9dyHX
 R0HOix3DzlQeDTOvRjid2JBX7cr81Ia6hcbPhVq8DkZ69P5c8hfGEXpE0OQRtep6MV7P
 gUSw==
X-Gm-Message-State: APjAAAXOnbuWQR+H9LILfczT2iU/wUIH0YGzGosjW4DGN9erra9oYBNh
 bqABjmNmUa0cU/ysB7vbdAZPoxvDhnTihaVts5zmWg==
X-Google-Smtp-Source: APXvYqwdNjQYlHa+EYGG9cYd5S/M4t6GD8xAgYbH5oan4tRX2uD+3HJ2pcScFA/RQGLbJ1Pj4PbATG8KYxCTKghIRqw=
X-Received: by 2002:a67:f4ce:: with SMTP id s14mr2469409vsn.107.1566561098809; 
 Fri, 23 Aug 2019 04:51:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAJXyS=jYMtmp3rhMP_Dv=fwB9AGDCyurPsyvm365SiroJw_0zA@mail.gmail.com>
In-Reply-To: <CAJXyS=jYMtmp3rhMP_Dv=fwB9AGDCyurPsyvm365SiroJw_0zA@mail.gmail.com>
From: Jeffery To <jeffery.to@gmail.com>
Date: Fri, 23 Aug 2019 19:51:27 +0800
Message-ID: <CAJXyS=h5X3zTDVC4OHzBzS9=J+7u8KHzrwK5UUVLUNASFkLrng@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_045141_276587_840AD39E 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Cannot compile cryptodev-linux using x86-64 SDK
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
Content-Type: multipart/mixed; boundary="===============8970417452622002170=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8970417452622002170==
Content-Type: multipart/alternative; boundary="000000000000d046d80590c76dff"

--000000000000d046d80590c76dff
Content-Type: text/plain; charset="UTF-8"

On Sat, Aug 17, 2019 at 2:25 AM Jeffery To <jeffery.to@gmail.com> wrote:

> As the subject of this email says, I get an error when trying to compile
> cryptodev-linux using the x86-64 SDK. (Though a different error than the
> one I found with the armvirt-64 SDK.)
>
> This error has been happening for a while, at least a month. (I haven't
> had time to follow up until now.) I suspect this is also related to the
> switch to the 4.19 kernel, though I have no direct evidence.
>
> The error message (included below) doesn't seem too helpful. Any help in
> fixing this would be appreciated.
>

This is still happening with the latest snapshot SDK. I'm not asking for
someone to fix this for me, but I'm not familiar enough with Kbuild to know
what is missing for the SDK target.

(Honestly, I work around this issue by using the SDK of another arch for my
package testing, but I would like to get this fixed anyway.)

Any pointers or other help would be greatly appreciated.

Thanks,
Jeff

--000000000000d046d80590c76dff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Aug 17, 2019 at 2:25 AM Jeffery T=
o &lt;<a href=3D"mailto:jeffery.to@gmail.com">jeffery.to@gmail.com</a>&gt; =
wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>As the subject of this email says, =
I get an error when trying to compile cryptodev-linux using the x86-64 SDK.=
 (Though a different error than the one I found with the armvirt-64 SDK.)</=
div><div><br></div><div>This error has been happening for a while, at least=
 a month. (I haven&#39;t had time to follow up until now.) I suspect this i=
s also related to the switch to the 4.19 kernel, though I have no direct ev=
idence.</div><div><br></div><div>The error message (included below) doesn&#=
39;t seem too helpful. Any help in fixing this would be appreciated.</div><=
/div></blockquote><div><br></div><div>This is still happening with the late=
st snapshot SDK. I&#39;m not asking for someone to fix this for me, but I&#=
39;m not familiar enough with Kbuild to know what is missing for the SDK ta=
rget.</div><div><br></div><div>(Honestly, I work around this issue by using=
 the SDK of another arch for my package testing, but I would like to get th=
is fixed anyway.)<br></div><div><br></div><div>Any pointers or other help w=
ould be greatly appreciated.</div><div><br></div><div>Thanks,<br></div><div=
>Jeff</div><div><br></div></div></div>

--000000000000d046d80590c76dff--


--===============8970417452622002170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8970417452622002170==--


Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE02B2FA2
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 13:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W31uLEzlcZDJs/Ih82eLORbr5wHFbncrykM4HNxjdl4=; b=LtjN6DJK+eyM5DfAba78Q6VA9
	RqNth4Y/HRLnrw1k+4DbaZNjG8VgiPWusZbBAn9MMDFdHktUVsMUvo6EXo2P2+oHdxr6o2cWFEQBT
	jE3GlgBn/v7zJBHy/lXedys0gX+AT5BIYfiOOERQTD6VcbNB/3vTu/RiZKWpNX7bkMFhgdUTNiWBq
	Hcc914eAKQzkWx7bUwCZQrHWVMI+oV2jUQ589/UPPcQSU/jpWNVR9R91L02ARGuOxfHek6zhhFeaS
	YZdH+eSJpuRe9S6PmD8jevDBXDyhARpIuyzSjEwavmkRPSMGPiFyBVaq9Ueca7/dmdrPhlLSwWAcI
	LzOffG2IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9SGO-0000qY-5I; Sun, 15 Sep 2019 11:00:16 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9SGG-0000NT-9O
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 11:00:10 +0000
Received: by mail-ed1-x536.google.com with SMTP id c20so21594396eds.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Sep 2019 04:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=jRIcuyBkwE5KpBLoUSp4XMHwO7dTgdSmf4YQ8bUwdZo=;
 b=Mk+wm7ojv1oBFrpFGMKRpaQdQ1FcXCYh56l7BLlJKwSWcvgfbPi0wjgrFFn/rLGlLB
 SySp2QVKQ9XuhQqyPlJ3zaWHJry4kUkQSZt8N2O4I/9Yiqrlb8AhSxExk/0Nf5TpdnVL
 puX8WPz5Zmep7D6GqbqJqJaDEykVyncUJPpbI0padoqYc3KtrIfj2jBa2o3tdiT2o5Lc
 /5hVkPFjzbrL5HyI8E9xaDxAcLy+/Yznt+FDYCZjnUxgy74+mdm0qrBQ2yy+W/dM/4cP
 MJJJxpS7+h//LNtNOJ+Kmzq+Dslkq+y2CioY9DIkc6DhYXIjf0Z1f9dxaat0PR5aLF3+
 lnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=jRIcuyBkwE5KpBLoUSp4XMHwO7dTgdSmf4YQ8bUwdZo=;
 b=fmccY/We3C8pszA5/qOntK0nsdRRFqyhu8rT8uWPtTawusaGa0YZ9D/1dI3zdxARI6
 2aE2Pa+ZDGsRR+5Nh5BbCLAabJnc2ib4NVqoJUtl2pMw8FhHmaMKL8HUENJ733BTS1oA
 oYhkaDknL7388Yk/3Eb3Yb5RN8QYF8u3DVFWR5RXD0Zpn+IGnTfegW21GK5LXiGScoxN
 MX0+q7tPGdadJ93YZ4w/HnBl1WsfOkjvanKZKt0sXxYIl5XLseQwliN6OrO+S+0PtwBB
 EOAmN1CvUpv8pCEzCIHCx9Ma35Aqrkwsgcojrp/iX4M2GACF0Oocw5w6FRadp/VFnd57
 IGsQ==
X-Gm-Message-State: APjAAAXVjLEHMOcNUQLRJOMThd0O2/0/bmhAGsfWLF8Ickd364h7mUCU
 7z5VKkFT5lYMt0BU/zttsTw=
X-Google-Smtp-Source: APXvYqyC8lrYAs9eaIWwtkSfog/Ljt4oSVsazTfm+j4YsCrvtNdq1eBY6oearXGtiiv0xFW73CC6eA==
X-Received: by 2002:a50:e701:: with SMTP id a1mr50905340edn.108.1568545205028; 
 Sun, 15 Sep 2019 04:00:05 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id j9sm332334edt.15.2019.09.15.04.00.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 04:00:04 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Message-Id: <2DE5FBE6-F20C-411B-9CF7-C128108D852E@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sun, 15 Sep 2019 13:00:03 +0200
In-Reply-To: <mailman.24856.1568545067.19300.openwrt-devel@lists.openwrt.org>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <openwrt/openwrt/pull/2411@github.com>
 <openwrt/openwrt/pull/2411/c531510195@github.com>
 <mailman.24856.1568545067.19300.openwrt-devel@lists.openwrt.org>
X-Mailer: Apple Mail (2.3445.104.11)
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_040008_378266_B486A3D8 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5455922235383864193=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5455922235383864193==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5402C3F0-A77B-42D4-9FBD-B53170C053FF"


--Apple-Mail=_5402C3F0-A77B-42D4-9FBD-B53170C053FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

again from not DMARC rejected google account. see below. thanks

> Am 15.09.2019 um 12:57 schrieb Ivan H=C3=B6rler via openwrt-devel =
<openwrt-devel@lists.openwrt.org>:
>=20
> The sender domain has a DMARC Reject/Quarantine policy which disallows
> sending mailing list messages using the original "From" header.
>=20
> To mitigate this problem, the original message has been wrapped
> automatically by the mailing list software.
> Von: Ivan H=C3=B6rler <i.hoerler@me.com>
> Betreff: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
> Datum: 15. September 2019 um 12:57:33 MESZ
> An: Adrian Schmutzler <mail@adrianschmutzler.de>
> Kopie: openwrt-devel@lists.openwrt.org
>=20
>=20
> Hi Adrian
> So i did: https://github.com/openwrt/openwrt/pull/2411 =
<https://github.com/openwrt/openwrt/pull/2411>
> Thanks for the help!
> Ivan
>=20
>> Am 14.09.2019 um 22:18 schrieb Adrian Schmutzler =
<notifications@github.com <mailto:notifications@github.com>>:
>>=20
>> Hi, thanks for implementing my suggestions. However, please do not =
open a new PR when doing changes, but rebase your commits in the =
existing branch in the future, so discussion etc. is kept.
>>=20
>> For this PR, I would like you to address the following minor issues:
>>=20
>> You are changing only Linkit Smart 7688, but your commit title does =
not express that. Maybe choose something more specific like
>> "ramips: add SD-Card support to Linkit Smart 7688"
>> In the commit description, please remove the reference to 18.06. Your =
commit will be applied to master, and then might be backported to older =
stable branches, so the reference to 18.06 is wrong in this case. Just =
state that the SD-Card reader is not working ATM.
>> =E2=80=94
>> You are receiving this because you authored the thread.
>> Reply to this email directly, view it on GitHub =
<https://github.com/openwrt/openwrt/pull/2411?email_source=3Dnotifications=
&email_token=3DABOOK6AQOMK3SJDOVHP3RYLQJVBIBA5CNFSM4IWXLNB2YY3PNVWWK3TUL52=
HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6XDHMY#issuecomment-53151019=
5>, or mute the thread =
<https://github.com/notifications/unsubscribe-auth/ABOOK6G5BUMN6F2ZTLJ2OPL=
QJVBIBANCNFSM4IWXLNBQ>.
>>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--Apple-Mail=_5402C3F0-A77B-42D4-9FBD-B53170C053FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">again=
 from not DMARC rejected google account. see below. thanks<br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 15.09.2019 um 12:57 schrieb Ivan H=C3=B6rler via =
openwrt-devel &lt;<a href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">The sender domain =
has a DMARC Reject/Quarantine policy which disallows<br class=3D"">sending=
 mailing list messages using the original "From" header.<br class=3D""><br=
 class=3D"">To mitigate this problem, the original message has been =
wrapped<br class=3D"">automatically by the mailing list software.<br =
class=3D""><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px;" class=3D""><span =
style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica, =
sans-serif; color:rgba(127, 127, 127, 1.0);" class=3D""><b class=3D"">Von:=
 </b></span><span style=3D"font-family: -webkit-system-font, Helvetica =
Neue, Helvetica, sans-serif;" class=3D"">Ivan H=C3=B6rler &lt;<a =
href=3D"mailto:i.hoerler@me.com" class=3D"">i.hoerler@me.com</a>&gt;<br =
class=3D""></span></div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px;" class=3D""><span =
style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica, =
sans-serif; color:rgba(127, 127, 127, 1.0);" class=3D""><b =
class=3D"">Betreff: </b></span><span style=3D"font-family: =
-webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" class=3D""><b=
 class=3D"">[OpenWrt-Devel] [ramips] Linkit Smart 7688 =
kmod-sdhci-mt7620</b><br class=3D""></span></div><div style=3D"margin-top:=
 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;" =
class=3D""><span style=3D"font-family: -webkit-system-font, Helvetica =
Neue, Helvetica, sans-serif; color:rgba(127, 127, 127, 1.0);" =
class=3D""><b class=3D"">Datum: </b></span><span style=3D"font-family: =
-webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" =
class=3D"">15. September 2019 um 12:57:33 MESZ<br =
class=3D""></span></div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px;" class=3D""><span =
style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica, =
sans-serif; color:rgba(127, 127, 127, 1.0);" class=3D""><b class=3D"">An: =
</b></span><span style=3D"font-family: -webkit-system-font, Helvetica =
Neue, Helvetica, sans-serif;" class=3D"">Adrian Schmutzler &lt;<a =
href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a>&gt;<br =
class=3D""></span></div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px;" class=3D""><span =
style=3D"font-family: -webkit-system-font, Helvetica Neue, Helvetica, =
sans-serif; color:rgba(127, 127, 127, 1.0);" class=3D""><b =
class=3D"">Kopie: </b></span><span style=3D"font-family: =
-webkit-system-font, Helvetica Neue, Helvetica, sans-serif;" class=3D""><a=
 href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a><br =
class=3D""></span></div><br class=3D""><br class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi Adrian<div =
class=3D"">So i did:&nbsp;<a =
href=3D"https://github.com/openwrt/openwrt/pull/2411" =
class=3D"">https://github.com/openwrt/openwrt/pull/2411</a></div><div =
class=3D"">Thanks for the help!</div><div class=3D"">Ivan<br =
class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 14.09.2019 um 22:18 schrieb Adrian =
Schmutzler &lt;<a href=3D"mailto:notifications@github.com" =
class=3D"">notifications@github.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><p class=3D"">Hi, =
thanks for implementing my suggestions. However, please do not open a =
new PR when doing changes, but rebase your commits in the existing =
branch in the future, so discussion etc. is kept.</p><p class=3D"">For =
this PR, I would like you to address the following minor issues:</p>
<ul class=3D"">
<li class=3D"">You are changing only Linkit Smart 7688, but your commit =
title does not express that. Maybe choose something more specific =
like<br class=3D"">
"ramips: add SD-Card support to Linkit Smart 7688"</li>
<li class=3D"">In the commit description, please remove the reference to =
18.06. Your commit will be applied to master, and then might be =
backported to older stable branches, so the reference to 18.06 is wrong =
in this case. Just state that the SD-Card reader is not working =
ATM.</li>
</ul><p =
style=3D"font-size:small;-webkit-text-size-adjust:none;color:#666;" =
class=3D"">=E2=80=94<br class=3D"">You are receiving this because you =
authored the thread.<br class=3D"">Reply to this email directly, <a =
href=3D"https://github.com/openwrt/openwrt/pull/2411?email_source=3Dnotifi=
cations&amp;email_token=3DABOOK6AQOMK3SJDOVHP3RYLQJVBIBA5CNFSM4IWXLNB2YY3P=
NVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWSZGOD6XDHMY#issuecomme=
nt-531510195" class=3D"">view it on GitHub</a>, or <a =
href=3D"https://github.com/notifications/unsubscribe-auth/ABOOK6G5BUMN6F2Z=
TLJ2OPLQJVBIBANCNFSM4IWXLNBQ" class=3D"">mute the thread</a>.<img =
src=3D"https://github.com/notifications/beacon/ABOOK6ESZUWLQHUT5TZJGEDQJVB=
IBA5CNFSM4IWXLNB2YY3PNVWWK3TUL52HS4DFVREXG43VMVBW63LNMVXHJKTDN5WW2ZLOORPWS=
ZGOD6XDHMY.gif" height=3D"1" width=3D"1" alt=3D"" class=3D""></p>
</div></blockquote></div><br class=3D""></div></div><br class=3D""><br =
class=3D"">_______________________________________________<br =
class=3D"">openwrt-devel mailing list<br class=3D""><a =
href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a><br =
class=3D"">https://lists.openwrt.org/mailman/listinfo/openwrt-devel<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_5402C3F0-A77B-42D4-9FBD-B53170C053FF--


--===============5455922235383864193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5455922235383864193==--


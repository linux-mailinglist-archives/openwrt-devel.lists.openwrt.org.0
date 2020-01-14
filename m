Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66D613A0B4
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 06:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pin0MDoWNtujhA6pG5sjW8NRf9MDK89xcaXnWKGm03A=; b=hKG
	cLWM1wL3zMhrzdsgN7h6kr+dl3pAyGI4vhcmbLepi9xMumx63zBmLIjRug5DPXt9drBrW6w3CbvFu
	9rMsjTSreTVc9R92yKvnqWR9hkXF3ah3cHg3RXX3ujxeg5VRCW7Z5Brh8GZzE9QLnqu3/J07XtUWp
	MrUQBcJlgi9V5R9CCS9TVtzQh7aQoR7X+gOPgU56eDvsPxAoRGYxcX/GYkCKS58fnfAVPnFPwKbNk
	jCBUeIAd7at8mBWcUNtLNHMnObLryX+P40NQPRyToUbFRAbHWZX4vMWJa3eFAyy3YzZzNU3wEi7Xq
	rzFZ5k1ZBJS4mVZkz2RS9oAx3MF4Vdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEmX-0003HT-PB; Tue, 14 Jan 2020 05:30:25 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEmO-0003Gw-7e
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 05:30:17 +0000
Received: by mail-lf1-x12f.google.com with SMTP id r14so8786473lfm.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 21:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globalsinc-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=sZe4ELzBbCzkSU+oQG+vztCWxbzr1H/6pQ0lXmVgZjo=;
 b=Cqze4OL534xk3LQLn9fYRRA2K9kRsnQnw9CHhrGle5ICI2sCQKFe255XEo4TtgpmoY
 DjyPAnkSu2SJz/G92yoB2mb6VtYvLOk0sbpFOigQo/zLy90lYqRx3ha3OZObOMxLzahY
 xEp6SEqfWqQ5wJmvL/KblYl5rUyv0KHqCJrarvQRL9glG3JK8ei8Z3Iij6m4i7yJ7+CB
 ijoNblDecQESRxMC06Ruvz7GqSTeifViqsfv3WI7ID14AjpjoKwh7gBguf1RXnxrn0bz
 HLN08zjIjV+mRYRrEwSh5Wv6yNrcWy9ICrvd+6Rom0BexFzik2Qezj+7ehbC9a8lkGtQ
 rRTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=sZe4ELzBbCzkSU+oQG+vztCWxbzr1H/6pQ0lXmVgZjo=;
 b=PauKMkVWgFonJFj6kefSRKptJGLmXVSdCa6uWR4wteh6mYiV/qcrsUdxvYOAKfuZTB
 98Nxxlcmjor36tlGWAYg5OsyCWDdnTalPKfUbQZSdgPHZLrmYIie4uXI7C2yLZrWVSEf
 d1N3dq3inkA0NPC8Qq9rfZ/FSV3uvx4p+FVNmH+MZ2QyutVYegO8qVfvft+OjgO8J52/
 lN3hF7CCN3dsvZ3CCBY55gTWopHhaGoYrvchcjW8E3YT33w9RVK8j5UaKM0EHKoTwFJG
 js9LoIghZHEBftc7oWQPrSPIwupilDWDfG8hc1XdrVDjQlDcSgxB2fvO8s85nunvcG/a
 OVbA==
X-Gm-Message-State: APjAAAXeTMXbit6h7v2eidax5LkH6MjSylqELpJWc7D8r/xtDAhDORaB
 TbmxYG59dXqcRVArW+T5gipeGFJ6WWsbYimtiUgXblLXxPAeqhipzKivbcBzfrCmyA69yfVp76U
 JIXrrBKFsTslXYCiQpz/FTuzPn1tCqumbeljb90wlMENONg==
X-Google-Smtp-Source: APXvYqzr/ErngSs2r6mCmPx1mCW53w+EbMFaI0aQQTvAMUVhcTD4KuIIRzv4bEocslDOqS2YZLpx8sI3r1peLDdp5GU=
X-Received: by 2002:ac2:5582:: with SMTP id v2mr584330lfg.183.1578979813094;
 Mon, 13 Jan 2020 21:30:13 -0800 (PST)
MIME-Version: 1.0
From: Reshmi Aravind <reshmi.a@globalsinc.com>
Date: Tue, 14 Jan 2020 10:55:29 -0800
Message-ID: <CACvT9T6b9yHFAjH9eqioC0_UNqFpZ5SMqu7=ykuLBu2PiAj=3w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_213016_416179_C811C4B8 
X-CRM114-Status: UNSURE (   4.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 DATE_IN_FUTURE_12_24   Date: is 12 to 24 hours after Received:
 date
 0.7 HTML_IMAGE_ONLY_20     BODY: HTML: images with 1600-2000 bytes of
 words 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_REMOTE_IMAGE         Message contains an external image
Subject: [OpenWrt-Devel] Tplink TDw8901N v3.20
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
Content-Type: multipart/mixed; boundary="===============1060060597902556177=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1060060597902556177==
Content-Type: multipart/alternative; boundary="000000000000de0a4a059c12e2b2"

--000000000000de0a4a059c12e2b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there a openwrt supported image for the router "Tplink TD "W8901N V3.2"?

Thanks,

--=20


----

"Globals is one of those fast-growing Indian IT companies that=20
Westerners simultaneously admire and fear" -=C2=A0**The Economist**

Globals=20
ITES Private Limited |=C2=A012, Badrappa Layout, Outer Ring Road, Bengaluru=
,=20
India 560094 | Tel: +91 80 2217-0777 | info@globalsinc.com=20
<mailto:info@globalsinc.com>

Email Disclaimer: This message contains=20
confidential information and is intended only for the individual named. If=
=20
you are not the named addressee you should not disseminate, distribute or=
=20
copy this e-mail. You cannot use or forward any attachments in the email.=
=20
Please notify the sender immediately by e-mail if you have received this=20
e-mail by mistake and delete this e-mail from your system.=C2=A0

--000000000000de0a4a059c12e2b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Is there a openwrt supported image =
for the router &quot;Tplink=C2=A0TD &quot;W8901N V3.2&quot;?</div><div><br>=
</div><div>Thanks,</div></div>

<br>
<div style=3D"font-size:1.3em"><br></div><div style=3D"font-size:1.3em">---=
-</div><div><img src=3D"https://i.ibb.co/CKktPN9/The-Economist-Logo1.png"><=
/div><div><span style=3D"font-size:small;font-family:arial,helvetica,sans-s=
erif;background-color:rgb(255,255,255)">&quot;Globals is one of those fast-=
growing Indian IT companies that Westerners simultaneously admire and fear&=
quot; -=C2=A0</span><b style=3D"font-size:small;font-family:arial,helvetica=
,sans-serif;background-color:rgb(255,255,255)"><i>The Economist</i></b><br>=
<br><font size=3D"1" style=3D"font-size:1.3em">Globals ITES Private Limited=
 |=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;bac=
kground-color:rgb(255,255,255)">12, Badrappa Layout, Outer Ring Road, Benga=
luru, India 560094 | Tel: +91 80 2217-0777 | <a href=3D"mailto:info@globals=
inc.com" target=3D"_blank">info@globalsinc.com</a><br><br></span></font><sp=
an style=3D"font-size:1.3em;margin:0px;padding:0px;border:0px;font-family:p=
roxima_nova_rgregular,Arial,Helvetica,sans-serif"><font size=3D"1">Email Di=
sclaimer: This message contains confidential information and is intended on=
ly for the individual named. If you are not the named addressee you should =
not disseminate, distribute or copy this e-mail. You cannot use or forward =
any attachments in the email. Please notify the sender immediately by e-mai=
l if you have received this e-mail by mistake and delete this e-mail from y=
our system.=C2=A0</font></span></div>
--000000000000de0a4a059c12e2b2--


--===============1060060597902556177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1060060597902556177==--


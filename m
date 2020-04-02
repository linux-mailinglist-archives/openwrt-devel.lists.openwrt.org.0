Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F30819BA9D
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 05:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fekuoruEA/b6outfJ+l3M1xZkSmceD+Y25S3wJmNU08=; b=hSr
	jP47eRsrofGVp3Ufjmf2ma7Lux8ZMT3/glZLDGte3mqn7PAplbdiMWBUvyDh8wXEdzOdV5ejCNV61
	UFlq3Mmc4P/CxDpI9qTi6C0K/fx5/eiTcEiW3a3QweUB05DjID46xOg9rnUzzO38ATV39ZWdtepJp
	ljTCgpEXX6vscVTZpFPpDwvQ1ODutEcVfX9fRIks3OmGk2Ubzjjx7eQPPVghRft+tO60mV0+QTJrk
	hCdi2KwSU+S7kYTWt+xYXNDtbPUGoaq7UKOMdyJhynGRV7yXffWSclknfx4chi1wXbrzytjhJ3ppq
	gz6u5UwTBEJCQoRo6bnrnh1iTfwbXOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJqKS-0006o1-5x; Thu, 02 Apr 2020 03:15:40 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJqKM-0006na-4a
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 03:15:35 +0000
Received: by mail-il1-x136.google.com with SMTP id r5so2211777ilq.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 20:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenotec-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=EE7EJhvHnFyC9nXYYYXgRQ1jPzSSIGF2xVAK60611lo=;
 b=WURwvre66RvjD+TuuswffbDHhP0aVK8PuweM7Jgc+VCXcuwXREb+2Xr/7YpyCZdfDz
 mlB+qgfO9nAkssaK7F+g+RqfSVorpvq2NgNKV95cn1qrghKChObnsMciBFqNfpEC1QFm
 52S80dwwIgts7MY96KzD8b3g59nIVvpxSpixUoa1viqOArl9W7HAdNIoFvyTSANqPQql
 vJJ/djX6uFeOjqoIjKGi54VbT9el929OWt/B0y9YZmWDQXdg/1ddqRJx3MCk3NGBEr27
 BAvERryjf3bHGO8igCULLBGm69t8XydqNFRy0hJ005369q/SAnjns1AskTQYKcnR7nhk
 6kmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EE7EJhvHnFyC9nXYYYXgRQ1jPzSSIGF2xVAK60611lo=;
 b=fz2Ubze+2dn6eELF0sSepLqkhB6yKN6c0lsZ73FvR9qQRIorfaNtJ9KwXhOzEdR/mc
 vR5V4yMkAf4NwOId5Z4aUtUSPNN2xPsgSFb+eBvTtUfa+RZ+K60BBOGdXK8zE4h0zf8J
 hUKaRwKuVQg71x1xkZbHx2Hivfe41aBUBobg2CwDZf7F5l2L4yVnyCP+r9evkoo8Z/nz
 ZHbE2TgKavyZsTQB5o799VjqwaXgVNaolhRfEhZC0RPm90M5NfV87Zap2BK2ZnE8W0wY
 8PU+lhvtDD39Q4Zvjt2a/52JyAN5f+PS1WW3x0J1WojeqNs69ia0OpMghMdkBZ/Ouf++
 ncqg==
X-Gm-Message-State: AGi0PuaM3F1Px+QdUibuJxD9Cm9VJVgUNWByD88IUKZGRU7QMRUt3dza
 J2tMakLIwyJxRypzFBvcmm9n292O7eaQUO4AbjFNHKYm2oc=
X-Google-Smtp-Source: APiQypLSFxl/ZrP7zavlsDbmr6AgMY516bUeS9FfahgYhxyz6Sv0R79LpRq4JuxPslXFgz1CPoJSZeXXyHO5AFixylA=
X-Received: by 2002:a92:8c45:: with SMTP id o66mr1245518ild.236.1585797331001; 
 Wed, 01 Apr 2020 20:15:31 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Mahoney <kevin.mahoney@zenotec.net>
Date: Wed, 1 Apr 2020 21:15:21 -0600
Message-ID: <CAEKKVUjR2ZWeSm74CJCOvUWTkFqUQ1RjvLgLeJMWoo21FNzWBQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_201534_246139_FFB196B1 
X-CRM114-Status: UNSURE (   2.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Ath10k: How is the interface mac address set?
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
Content-Type: multipart/mixed; boundary="===============8214707609729241240=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8214707609729241240==
Content-Type: multipart/alternative; boundary="00000000000099ba3f05a24636f9"

--00000000000099ba3f05a24636f9
Content-Type: text/plain; charset="UTF-8"

I'm working with an IPQ8065 based board with dual QCA9984s. I have it up
and running but the wireless interfaces mac address is garbage.
"00:03:7f:12:34:56" to be exact. I haven't been able to find the magic that
reads and sets the proper address from non-volatile memory. Any pointers?

Regards,

*Kevin Mahoney*

*ZenoTec LLC*
720-864-4320
kevin.mahoney@zenotec.net
www.zenotec.net

This e-mail and any attachments are intended solely for the use of the
intended recipient(s) and may contain legally privileged, proprietary
and/or confidential information. Any use, disclosure, dissemination,
distribution or copying of this e-mail and any attachments for any purposes
that have not been specifically authorized by the sender is strictly
prohibited. If you are not the intended recipient, please immediately
notify the sender by reply e-mail and permanently delete all copies and
attachments.

--00000000000099ba3f05a24636f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m working with an IPQ8065 based board with dual=
 QCA9984s. I have it up and running but the wireless interfaces mac address=
 is garbage. &quot;00:03:7f:12:34:56&quot; to be exact. I haven&#39;t been =
able to find the magic that reads and sets the proper address from non-vola=
tile memory. Any pointers?</div><div><br></div><div>Regards,</div><br clear=
=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><font face=3D"courier new, monospace" size=3D"2"><b>Kevin Mahoney</=
b></font></div><div><font face=3D"courier new, monospace" size=3D"2"><b><br=
></b></font></div><div><font face=3D"courier new, monospace" size=3D"1"><b>=
ZenoTec LLC</b></font></div><div><font face=3D"courier new, monospace" size=
=3D"1">720-864-4320</font></div><div><font face=3D"courier new, monospace" =
size=3D"1"><a href=3D"mailto:kevin.mahoney@zenotec.net" target=3D"_blank">k=
evin.mahoney@zenotec.net</a></font></div><div><font face=3D"courier new, mo=
nospace" size=3D"1"><a href=3D"http://www.zenotec.net" target=3D"_blank">ww=
w.zenotec.net</a></font></div><div><br></div><div>This e-mail and any attac=
hments are intended solely for the use of the intended recipient(s) and may=
 contain legally privileged, proprietary and/or confidential information. A=
ny use, disclosure, dissemination, distribution or copying of this e-mail a=
nd any attachments for any purposes that have not been specifically authori=
zed by the sender is strictly prohibited. If you are not the intended recip=
ient, please immediately notify the sender by reply e-mail and permanently =
delete all copies and attachments.<br></div></div></div></div></div></div><=
/div></div></div>

--00000000000099ba3f05a24636f9--


--===============8214707609729241240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8214707609729241240==--


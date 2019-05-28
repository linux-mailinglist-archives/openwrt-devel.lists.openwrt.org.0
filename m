Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC042C607
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 14:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vjkCWJjULj3eD408AcVRhX/3Nuor/VU5v6eToufN3dI=; b=k6C
	JucafV85hR4J3IqIC36gEuDmbEek0/Q5u/QD5PBGzZyhOF7Ami/ffowzQl9xykYuREcepSSTWnGxa
	ItHpo/0OCAhFdyFgcBeTsgucp9d89caw1huChnkhxCFoCGmf6atIjiDM0+/4jLlfrQMGaU/0w4o3A
	jsCXNrhHOQpYXdFjhM9NtK2uIbN062yOkKoP5/zPx8YjGopNbDLMFhFBE8G23yfOoZgUunvt+oSGS
	7LE8wWDj0fEdboSk8mvTIV1WYdfVHcYwXS/4Qh/ZTj0Ia2Kr0L1FM8AxzLsPyCJg24rTnw6yNMt9b
	oGZt7XEX32sSprxH2YsImEdBdRcWaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVamj-0000e4-LZ; Tue, 28 May 2019 12:00:53 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVamb-0000dK-2I
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 12:00:48 +0000
Received: by mail-qk1-x72d.google.com with SMTP id m14so249851qka.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 May 2019 05:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=xLscHNQU0mWEihvHvojmJ6thMus3r0slCk4cBPvEOwM=;
 b=W3auOl8pTjMNvW460Z+acAQs0eAeP4i/AyDCfpI4iOoa3mTEB9BCvLgh+vVHHq19AM
 iTf8GC5ErnqkAHo3BVBuyInKA3rkSr7i/zab4On4IRIMwemE0KZWZGAXFPnoDK1KWFN8
 /Gj5JhtcwUIGubkT3NxefNOcSqgGv/qposlJe2nVCG9eLxtSPwxVaWIZWUgP32FE5cp3
 UMhWWaktRKNJFE8MgNkrjLr3osa+MXenfegJm/Qv27SCJAoqc75HvCS6efO3i7da8d4m
 F6oAIo4Hm6VImfbcoEjDEGINs6pdKPATLHzASPWRgbxPUsNMhb9C6W2jClGvLOMGAJYE
 4zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=xLscHNQU0mWEihvHvojmJ6thMus3r0slCk4cBPvEOwM=;
 b=DTPqOSQcJyiUXYxO1bUb1UnFj6s/l16UMJjeY33Dcg/ZN8UJd6nwnSvYpXdHsMwWwk
 T/qcn7RxkbDcnpLdeQ3NxwO71Ve1OeQ0I6XpltGKGCSMW5OlbCtcp9dw8tnDPWTx/OD4
 FfYiCTubaC5d5RueFNyHiDSthZWxhiglV+ir12H7mhFZpmCs2pluztwryiNaAScMdXSr
 1Yy8jhcGFMPb1zRTYQqu8wItnoxI9bkNtqlvAVfm2lxGCDiBPk+p6jWSMcjTE4dWA8Sq
 NPLRKeb2/4jgUu1CzLXe2ypgF8lkrcyWTlZ+FStCvaAROHuqCn2d2tyu6+ns5mGTaAV2
 anPw==
X-Gm-Message-State: APjAAAX4g+ItMFsbY7vKI2akltvlw2Ji8x/ywbrJYzlJszEMgVH3zuyt
 nMzMLdO9q9qeCdujOYlT/1L+Uyo+Iuumx9Cjrr+LZxU=
X-Google-Smtp-Source: APXvYqxRmShmuqshmsxo3xZ/x+Ex59qoG5MuTAjrV2XwvUaIeJ6QUbDFO5c6K7YIWayyENu4ymAdD23zGVfqO82Z8T0=
X-Received: by 2002:ac8:18b2:: with SMTP id s47mr5701361qtj.75.1559044843556; 
 Tue, 28 May 2019 05:00:43 -0700 (PDT)
MIME-Version: 1.0
From: Chris <threshnode@gmail.com>
Date: Tue, 28 May 2019 13:00:32 +0100
Message-ID: <CANDHWrd_nLzKm8AXivb9xGZW=aKFniSS6GQng7NabrB83MmjRg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_050045_104938_54802733 
X-CRM114-Status: UNSURE (   5.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (threshnode[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Netgear DM200 Boot Issue/Patch Availability?
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1635223283935297215=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1635223283935297215==
Content-Type: multipart/alternative; boundary="00000000000016d31b0589f16ac2"

--00000000000016d31b0589f16ac2
Content-Type: text/plain; charset="UTF-8"

Hi folks,

I was wondering if a patch enabling this device was ever released?

http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015556.html

The wiki suggests one can only install/boot into OpenWRT by wiring up a
JTAG/serial interface and manually intervene... Which is far beyond my
comfort zone.

Am very eagar to make use of this equipment, so any news would be really
appreciated.

All the best,
Chris

--00000000000016d31b0589f16ac2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi folks,</div><div><br></div><div>I was wondering if=
 a patch enabling this device was ever released?</div><div><br></div><div><=
a href=3D"http://lists.infradead.org/pipermail/openwrt-devel/2019-January/0=
15556.html">http://lists.infradead.org/pipermail/openwrt-devel/2019-January=
/015556.html</a></div><div><br></div><div>The wiki suggests one can only in=
stall/boot into OpenWRT by wiring up a JTAG/serial interface and manually i=
ntervene... Which is far beyond my comfort zone.<br></div><div><br></div><d=
iv>Am very eagar to make use of this equipment, so any news would=C2=A0be r=
eally appreciated.</div><div><br></div><div>All the best,</div><div>Chris<b=
r></div></div>

--00000000000016d31b0589f16ac2--


--===============1635223283935297215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1635223283935297215==--


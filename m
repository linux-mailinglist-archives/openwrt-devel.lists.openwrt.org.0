Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B981F0A93
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 10:58:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1+t/0f1oBEWIAHEZKQdn0bTaVshV1u2xvWPnlshOcrw=; b=cVRvsTCUQ/lZXn
	LlxgC2ugwn0VIDfBCZY7UUI7O2fJZcgsd+3UW1POEkji+7cGS1pJs5e9YxAc13YWDlTZ06i19K+mw
	U2ikhAFIZu/WVzS71qEqaOWWrB/a6Ga7uDrbgkU8eQdY6ibbFpz9bgEgWq7rel0oOQ8D45JXdrqqD
	rtMRRkmiu5TKcYEnvXrngvlvdDBWv6i0HN0CZg6uXYAbBQ81Qbb3Ka8OmUvwWjQmSgwJOPOsfVKXk
	EQ2ivbgALR9sakyg1uMfRMxcJ03/7igqdI9ZLHWsrAqkbJOM9kVmEzf+b/V7ZTcj1hxEKJ9uWcDqF
	WJTOaCBdoRhPaTGCGviw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhr8I-00038D-OV; Sun, 07 Jun 2020 08:58:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhr7g-0002he-PB
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 08:57:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id j10so14164390wrw.8
 for <openwrt-devel@lists.openwrt.org>; Sun, 07 Jun 2020 01:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vl6XyMmU1xPaF2pisjtPpTtnv2aaqp1Wgv52EO1c3X0=;
 b=HZYAiS9bFA8oVFYJS0L+fALdWFSjZqeTscFtucTs9AiO1exY4B7VkpD7p/Ev0HbjL+
 U/urPuM1vZ7EVPgCNdbyXLVOW8sF6xtSjhS5kAuVUbhajz+Tlh91JDiN9l8hZsF3kr32
 ZLnOzcGUR+soUFZ6S5BDuaNeiP/LMx+kz9gNf9/qupm0Acr0P80iNL5urhLmYkd3zcUx
 MHLg7OJukO+e5jEhjjy+0Vcr5mC3r/YqM1Gqp6i35LERWh6MJhXtA8cA/kItmJyEBYvE
 4Q+LPhxz/jyIXmY/NjaauFGe/FndzHb+00iNi0XtU305KEGpkcttyypanyD2rfk0JJB4
 +twA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vl6XyMmU1xPaF2pisjtPpTtnv2aaqp1Wgv52EO1c3X0=;
 b=qadQgSlN/7z6FexvJ8YNC7X78wrx2wAwYSSbhWPabhggqZU4pTDg/GkaTYi1q9dZ5N
 tldQ5xNGxHrMct2CYjtAwg1GpWYbtWcc9JWVqsw3DTMylXDF+s5akOzWTYk6D+8DtdMj
 jl9UvWMXFS922aDMeJIS4T8kT+ale1PdQDIDacPyVTe+D0X9vmcYQEyG8hXiDebftdH0
 cp9r6/O9DGXlBLvdSdrVW2pKoxG3ow/nU0hWOTimSbFvsaRV5L9wU2+6hYTy5CEOdC/S
 k116KC4JaKXagjm0c4Zk5YWWDba8Y/oSgPNuOn52gwwDBI0mtftMzW6zEIhGz4dtLF8S
 Gjcg==
X-Gm-Message-State: AOAM531Y55KLyY/awoWFGY/UtnDsL2pAmklBQ7rFwEVnluPIHRrOhcQ+
 CZATCuofRacTlJ63VepoDFaW/JTMEjw=
X-Google-Smtp-Source: ABdhPJzWeYpXBYyxl1ipPwCVzLwgAMWo63pR5jLZQwqmk6iiF3p4SUm2qWht+eSVIW6F7HJ3dGwJtw==
X-Received: by 2002:a05:6000:100e:: with SMTP id
 a14mr17722298wrx.349.1591520263146; 
 Sun, 07 Jun 2020 01:57:43 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id
 d191sm18306115wmd.44.2020.06.07.01.57.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 01:57:42 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 07 Jun 2020 10:55:51 +0200
Message-ID: <2007795.O39vskrCF1@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_015744_813088_AC73541C 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/4 v5] bcm63xx: image: don't add the CFE to
 the sercomm factory
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
Cc: noltari@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlcmUgaXMgbm8gbmVlZCB0byBpbmNsdWRlIHRoZSBDRkUgYm9vdGxvYWRlciBpbiB0aGUgU2Vy
Y29tbSBmYWN0b3J5CmltYWdlcy4KClRoZXJlIG1pZ2h0IGJlIGEgY2FzZSB3aGVuIHRoaXMgY291
bGQgYmUgdXNlZnVsOgogIC0gV2UgYXJlIHJ1bm5pbmcgdGhlIHN0b2NrIGZpcm13YXJlIG9uIHRo
ZSBmaXJzdCBTZXJjb21tIGltYWdlCiAgLSBUaGUgc2Vjb25kIHBhcnRpdGlvbiBzdG9yaW5nIHRo
ZSBib3Rsb2FkZXIgd2FzIGVyYXNlZCAodW5saWtlbHkpCkV2ZW4gaW4gdGhpcyBjYXNlIGZsYXNo
aW5nIGFuIGltYWdlIHdpdGhvdXQgYSBib290bGFkZXIgaXMgaGFybWxlc3MuCgpEb24ndCBpbmNs
dWRlIHRoZSBib290bG9hZGVyIGluIHRoZSBmYWN0b3J5IGltYWdlIGNyZWF0aW9uIGFuZCByaWQg
b2YgdGhlCnJpc2sgb2YgZmxhc2hpbmcgZmFjdG9yeSBpbWFnZXMgd2l0aCBhbiB1bnRlc3RlZCBi
b290bG9hZGVyIHBhcnRpdGlvbi4KClNpZ25lZC1vZmYtYnk6IERhbmllbCBHb256w6FsZXogQ2Fi
YW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6IHJlZnJlc2gKQ2hh
bmdlcyBpbiB2Mzogbm9uZQpDaGFuZ2VzIGluIHY0OiBub25lCkNoYW5nZXMgaW4gdjU6IG5vbmUK
CiB0YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSB8IDEyIC0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9iY202M3h4L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFr
ZWZpbGUKaW5kZXggMDU5M2RhY2I0NC4uNWVjMzFmNjIwNyAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xp
bnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1h
Z2UvTWFrZWZpbGUKQEAgLTIxOCwyMCArMjE4LDggQEAgZGVmaW5lIEJ1aWxkL2NmZS1zZXJjb21t
LXBhcnQKIAkJLS1wYXJ0LW5hbWUgcm9vdGZzX2xpYiBcCiAJCS0tcGFydC12ZXJzaW9uICQoU0VS
Q09NTV9WRVJTSU9OKQogCi0Jcm0gLXJmICRALWJvb3Rsb2FkZXIKLQlta2RpciAtcCAkQC1ib290
bG9hZGVyCi0JY3AgJChLRElSKS9iY202M3h4LWNmZS8kKENGRV9SQU1fRklMRSkgJEAtYm9vdGxv
YWRlci8kKENGRV9SQU1fSkZGUzJfTkFNRSkKLQkkKGNhbGwgQnVpbGQvY2ZlLWpmZnMyLCRALWJv
b3Rsb2FkZXIpCi0JJChjYWxsIEJ1aWxkL3BhZC10bywkKEJMT0NLU0laRSkpCi0JJChUT1BESVIp
L3NjcmlwdHMvc2VyY29tbS1wYXJ0aXRpb24tdGFnLnB5IFwKLQkJLS1pbnB1dC1maWxlICRAIFwK
LQkJLS1vdXRwdXQtZmlsZSAkQC5ib290bG9hZGVyIFwKLQkJLS1wYXJ0LW5hbWUgYm9vdGxvYWRl
ciBcCi0JCS0tcGFydC12ZXJzaW9uICQoU0VSQ09NTV9WRVJTSU9OKQotCiAJbXYgJEAua2VybmVs
X3Jvb3RmcyAkQAogCWRkIGlmPSRALnJvb3Rmc19saWIgPj4gJEAKLQlkZCBpZj0kQC5ib290bG9h
ZGVyID4+ICRACiBlbmRlZgogCiBkZWZpbmUgQnVpbGQvY2ZlLXNlcmNvbW0tbG9hZAotLSAKMi4y
Ny4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838B55E0CC
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 11:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8hVLWczXvD4tNt7Ba2uYxIga4bbkUJcEQJhcanN04Y=; b=jmDIMXmXR36YpN
	Pmewdt2KdvswMT1SpdPoKu3pNFNHYjseNfQZwAywx0ptSBVHDy1IJJJzA8Bdsy1Y5ro2NNZqqyNJG
	DYndWPbEjMSnILiftvuZi1RVCgn/+wVpKqDT2IZQIl2trGTNDuRmPQLhi8jOWY1uuFE+F4krJsrwh
	9eWe7HIv86fKpZG+ypFMWP90uLE/XYb8JHvVamXtW2FwW37k+TZ3CX3iuWGzAE9Mbh7ckBO+01L3q
	n7k01yIPlKUmqyvArU6jfKqHa2t0n8+CzCHOy6R56WSTg8LJGGICMH5NQuCPw1by64TziOysgFalP
	N8fslhiXm88CQKZ52P8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibOh-0004iR-FD; Wed, 03 Jul 2019 09:17:51 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibNS-00041w-OE
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 09:16:36 +0000
Received: by mail-lf1-x12e.google.com with SMTP id p197so1251031lfa.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 02:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O38LSFYpsiBJVDPhT5wKpl8wEOD+os7LYpe/ULmTwYg=;
 b=frj94IgEbPZ3+9o25ITnOxuIQYzOdF+KTBpdkP1Y05y5p2dT7xK8RQtSz/fcK3xrTT
 nVkXlelKRneRQAv+IKpq73t0Ie2lFLSCY37fEIiFUHCdnhgDI1VE0xqX2PjHOwS3px7s
 Tq+665yDvh9oor0e/WMgysFNUWM3e3kBhY1ClSTEtEyPf5D8DOAcEyPIcuWAQlwhc5+A
 RTRt8QZ9wwtpb4msejtehhwHOREnsGg0pCx8ufR/GIxQrF3tqjm+X3oH/tNN0PjLO8Tq
 smDJDJM1ToezzkSgr655d1aDBw7MLB4zp0c1yirlMe3dXwpE9yA3wehosbazxScc9IW4
 wDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O38LSFYpsiBJVDPhT5wKpl8wEOD+os7LYpe/ULmTwYg=;
 b=HA7LNS4Eo8oWZCUcCFTULsF1940XszGG5lmp7Jw43bGXiRODdb0LVrYGEURVbUY8V3
 46kLnYjMEpmlsDi1uond3bGrQIQWJyKaQReHgyD7PyKELv4cEnzHgGMW/ugvPTjBaLwv
 WNLd1ZYu4TZi+J+iKyPFtwU4/1cXFocVK80nraOY12+b8M03NejD2/bRAuCyQMRu3kfz
 m7GrZV0Pwkub5zvUyTydpK8sTiWR3681alIj2O6CXOn+S94SzZW+dmIa3rcPoQ8Snoey
 jfwoHN+NIgGluomcaxdwYWfv/hK7Llj7LZ6/pvROvXSVtjO5akpXc6R3BmalG957u/KS
 y+Pw==
X-Gm-Message-State: APjAAAWT42XDixGEd6mE2SQYgVk9lbQDz7+kppDIYTzy5mPWcfwJ/9HU
 l8rK4/MgHk+aIH04LLzOh8dhVJVd
X-Google-Smtp-Source: APXvYqyq7Gsb2U0NBwuDKdhedZ8YST8QSbSxc73hKOklmVy56wAvF/Owq65GKK4l2ra53j0eZHFgEw==
X-Received: by 2002:ac2:5559:: with SMTP id l25mr9659027lfk.175.1562145392689; 
 Wed, 03 Jul 2019 02:16:32 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id h78sm359814ljf.88.2019.07.03.02.16.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 02:16:32 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 11:16:22 +0200
Message-Id: <20190703091622.10057-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703091622.10057-1-zajec5@gmail.com>
References: <20190703091622.10057-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_021634_789209_AC1CD27B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] ubox: implement service_running() in log
 init.d script
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgYWxsb3dzIGNoZWNr
aW5nIGlmIHNlcnZpY2UgaXMgcnVubmluZy4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNr
aSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL3N5c3RlbS91Ym94L01ha2VmaWxlICAg
ICAgIHwgMiArLQogcGFja2FnZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdCB8IDQgKysrKwog
MiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9wYWNrYWdlL3N5c3RlbS91Ym94L01ha2VmaWxlIGIvcGFja2FnZS9zeXN0ZW0vdWJveC9N
YWtlZmlsZQppbmRleCA5NjMxYWM4NzJmLi42ZTY3OTUxOTI5IDEwMDY0NAotLS0gYS9wYWNrYWdl
L3N5c3RlbS91Ym94L01ha2VmaWxlCisrKyBiL3BhY2thZ2Uvc3lzdGVtL3Vib3gvTWFrZWZpbGUK
QEAgLTEsNyArMSw3IEBACiBpbmNsdWRlICQoVE9QRElSKS9ydWxlcy5tawogCiBQS0dfTkFNRTo9
dWJveAotUEtHX1JFTEVBU0U6PTIKK1BLR19SRUxFQVNFOj0zCiAKIFBLR19TT1VSQ0VfUFJPVE86
PWdpdAogUEtHX1NPVVJDRV9VUkw9JChQUk9KRUNUX0dJVCkvcHJvamVjdC91Ym94LmdpdApkaWZm
IC0tZ2l0IGEvcGFja2FnZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdCBiL3BhY2thZ2Uvc3lz
dGVtL3Vib3gvZmlsZXMvbG9nLmluaXQKaW5kZXggMjUwZjgwNWI0NC4uYmE5YzEyNGM4YiAxMDA2
NDQKLS0tIGEvcGFja2FnZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdAorKysgYi9wYWNrYWdl
L3N5c3RlbS91Ym94L2ZpbGVzL2xvZy5pbml0CkBAIC05NiwzICs5Niw3IEBAIHN0YXJ0X3NlcnZp
Y2UoKQogCWNvbmZpZ19mb3JlYWNoIHZhbGlkYXRlX2xvZ19zZWN0aW9uIHN5c3RlbSBzdGFydF9z
ZXJ2aWNlX2ZpbGUKIAljb25maWdfZm9yZWFjaCB2YWxpZGF0ZV9sb2dfc2VjdGlvbiBzeXN0ZW0g
c3RhcnRfc2VydmljZV9yZW1vdGUKIH0KKworc2VydmljZV9ydW5uaW5nKCkgeworCXByb2NkX3J1
bm5pbmcgbG9nCit9Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==

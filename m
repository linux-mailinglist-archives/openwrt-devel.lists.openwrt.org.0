Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB61B31AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 21:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yqxdDukQWVWadXfKKjvwg0VRWgZbCIDpeyDVpXxBWxA=; b=sKJXJ4dnScYTUd
	ZtWZVVglqkOzcBL2ga8/bgvwiroQQGJS20SMaNEZoyjuer36OOsY9MyMHiS6GKLItleJkx/McrBwo
	1JqsVPHrOAMqXpI1oL2MADw/yTr64kS/NRNUe911nr3eIHuqk4homhNzxWBLarIp4ZzsUFhU3ZkLJ
	bIAIYzZueySKjfuDGICYGaFiNu5sgXOyX+OZodmCmS5SJFSbO6IN2i7ZR9s3IsJLB7GvZIZZ2sLug
	YYlL++lh8sMbK+7bOha4/zVvIwGun5EKr92zKbttuqkxK46tuoPAEtZV6zeiKuK4rCA90IoA4FF6j
	Hrq6K/N24Grp9YBsV11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9aCc-0002Wk-B2; Sun, 15 Sep 2019 19:28:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9aCN-0002WQ-CU
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 19:28:40 +0000
Received: by mail-ed1-x534.google.com with SMTP id y91so31236059ede.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Sep 2019 12:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :to; bh=wnrcOKka6AUSr4MHIblPPBH3xvrcWNbP7i2Z4WWkRmY=;
 b=WotpuJvoEG7Erd3KyP8UQVoF92/X1Iw50sc0QQKlPPtntVhB0q3nqp6oIc4T+A/jS3
 ffDD0K0pBDiwcZiEn3zYi71RcXyIOlxkfEo4H3NCyqKDaartI+tVIjCNYw5Fh7uVmSJO
 Vnnq95BMHHxd0ZJSbxaUSBfjOywYru85q1eZL2FedVYAi/+f6YKrWQkpLpOSdnGh1vIh
 GIQFH3w4YzIYPJwxZFOpz72UBBzX9BEYUUtT51NM/VaOoi7sXefdjJ6Wo5X29ongUgT+
 WtDs7FXHop/Vv+rx89CZ0kyCnR1Hizs2+2K+Ju+Wa1J+Li4y3CKPG8VhEvL91oACJmsN
 o3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:to;
 bh=wnrcOKka6AUSr4MHIblPPBH3xvrcWNbP7i2Z4WWkRmY=;
 b=Eav0vljj8GMlPDWxU4PvlQM06zUL2U8mkagsLnNygtC57PZRn3an9tY/3PwQv8dive
 2D0l3cK3D1GhQRxj0fd9WES7idXhCNTm2a6NaEoeZnnR5lRVdMrdd4u1TQrGpH5US2Rv
 /EIm/SFnCdQbotB3WeX/0+ntS7Pll9i5ohhibbi4nV5U8hfqLDUGYfdi1sNCep6EKrRI
 AkVYZmdp+UNkIVTQ/B1p9e8hp8NGfYIh+9CNhD3PzeEeq5PB8N818Aivwdd/rewRtobR
 TRCBNoG/AePcF7rAN1OOR40L4txMyaN4C+mTGupKh5Iu38saX4PB6ZDsOw1dV5qxYaDW
 T+3Q==
X-Gm-Message-State: APjAAAX2jcmaiEuLvDP+QJtaD5cixAd/2FNczicfqmEBgThOQkZIU5we
 tTBS/4cTEKZK6mDp1APAGIifVWMA
X-Google-Smtp-Source: APXvYqyL0xWMEen3M5+AWqmZoyhCo04HuCZEpt6b2Asc6E7RPpN8zerVTDVhkQKEeHqKqRAIDd40NA==
X-Received: by 2002:a17:907:423e:: with SMTP id
 oi22mr37724299ejb.311.1568575717181; 
 Sun, 15 Sep 2019 12:28:37 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id b36sm6584531edc.53.2019.09.15.12.28.36
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Sep 2019 12:28:36 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
Date: Sun, 15 Sep 2019 21:28:35 +0200
To: openwrt-devel@lists.openwrt.org
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_122839_428411_61001E00 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkKTm93IGFmdGVyIG5vd2luZyBob3cgdG8gbWFrZSBhIFBSLCBpbSBpbnRlcmVzdGVkIHRvIGtu
b3cgaG93IHlvdSB0aGluayBhYm91dCBzb21lIHRoYXVnaHRzIG9mIG1lLgoKTGlua2l0IFNtYXJ0
IDc2ODggaGFzIGEgYmxhc3Qgb2YgdG9vbHMgdGhleSBvZmZlciBpbiB0aGUgb3JpZ2luYWwgZmly
bXdhcmUgYmlsZC4gQ29tcGFyZWQgdGhlIG9uZSBvcGVuV1JUIG9mZmVycyBpcyB2ZXJyeSBzbGlt
LgpJcyB0aGF0IG1lbnQgdG8gYmUgc28gb3IgZGlkIG5vYm9keSBjYXJlIHVudGlsIG1lPwoKU29t
ZSBvZiB0aGUgVG9vbHM6CjEuIEF1dG9tYXRpYyBhY3RpdmF0aW9uIGFzIEFjY2Vzc3BvaW50LCBi
ZWNhdXNlIHRoZSBib2FyZCBpcyBtZW50IGZvciBJT1QgYW5kIGhhcyBubyBFdGhlcm5ldCBwb3J0
LiBSaWdodCBub3cgd2l0aCB0aGUgb2ZmaWNpYWwgT3BlbldSVCBidWlsZCBjYW4gbm90IGJlIGNv
bm5lY3RlZCB0byBhbnkgbmV0d29yayB3aXRob3V0IGFkZHRpb25hbCBTZXJpYWwgY29udmVydGVy
LgoKMi4gTHVjaSBXZWJHVUkKCjMuIExhbmd1YWdlOiBQeXRob24gd2l0aCBQSVAKCjQuIExhbmd1
YWdlOiBOb2RlIHdpdGggTlBNCgo1LiBtcmFhIGZyb20gSW50ZWwKCjYuIHNvbWUgdXBtIG1vZHVs
ZXMgZnJvbSBJbnRlbAoKV2hhdCBvZiB0aGlzIGxpc3Qgd29sZCBiZSBwb3NzaWJsZSB0byBpbnRl
Z3JhdGUgaW4gdG8gYSBvZmZpY2lhbCBvcGVuV1JUIHJlbGVhc2Ugd2l0aG91dCBzY3JhdGNoaW5n
IHJ1bGVzPwoKUmVnYXJkcywgSXZhbiBIw7ZybGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

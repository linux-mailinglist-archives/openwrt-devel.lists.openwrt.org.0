Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8275E12256B
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 08:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g/93KQ5ROL3/Rj7JSjU1YBkW6nl0Cil/5ihWp03PkyU=; b=GDhbidcFialDUe
	TC7fBk+kE+M2INrEKKfCU3lEDY+9RrJk97tG+SHdve91+kTlvRTqKZDpfA/UowTL8Hu2YTh/LAwme
	zP/no2K0v7c9ShmiowzH1EuMxq8+H911YjXGrXGHvqvn0MWzaJ4h7dbN6ELkAbGcDrFYmjLOz1Jyv
	Ju2T3K2qK2R3TD5Tw+db2UyT2mmuNHcN0gZNxZav+kTXEOqEXSPrN+5ROPQH1ukDpbpxmnE80685S
	lgXd0u+3QBFAtsgg3LbIqBoqQ1evo1P8QjKro0BcXc53+XKQVDabD9z8B4qK2JHS+1gHwKv4qOrmI
	adUVLpBHt3/cK2Tg5w+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7Hr-0004j0-W0; Tue, 17 Dec 2019 07:28:56 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Hj-0004iF-3b
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 07:28:48 +0000
Received: by mail-lf1-x12c.google.com with SMTP id n25so6229677lfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 23:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gVTabWy+nMRzJL7A0EYFc4W+phJI5Sq6tyVJypj/hQk=;
 b=J5CMvbIvD15hjyapNjfQjBztFs6LV0OSYDp14QUbxxz6d3EVo7+lM1FdueZ1tDglXJ
 5zuPJwG60Wgd6rXzV+eBdijT30SLYtadmnHNHLJaAKRV2H+20ykW8sAFSENy1ktFG9dx
 OnxBoWODOpcNG3Q6EtzTV90NjC3WOIjahKfmm8hw9w9zGFe71RzSORkD+r3+paVcm9hW
 gHsPO4TkqbDm6QG29X72i3Jdk0xFJ2epKc5LFsmFVnCwH40tcFW13GOl9OkLP2TYI4SH
 bzqFZAINB1gV9x3NiAy/N+mJ1DQ/JgQqq7Ztc9IBB0mjTdjbeDaWBoqKchSWINyAVhpo
 Mr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gVTabWy+nMRzJL7A0EYFc4W+phJI5Sq6tyVJypj/hQk=;
 b=YYXpDWSIIIu1R8+FYMHrHmnyxfBZkUYS/ch1ed5eeMeIDK0v74GM3MxPeiHUv0TE04
 3gjPjb6fc6+FM4SLZeAuG6+bVARBlaAAD1CYMwpKw+lHjVLo978yw2DdpTC+Mw18UcQW
 gr1cxD/OGTr/75laEViplVFEIZjgPELBhD64KFvdG5wiboWnzOjZCWyVeQUIQcu0LSIY
 Fa61GHN2WoV9Q60+yeZdWZeU4VFVkOQ2rz+7UZ0GxivEFD5Bn0TUQkpeTKVl1xl+xgkb
 ejuh3weYp1OLzHVdX2Bq+ck8SIuzMAN8rf/IjBSbrmxav54Lbc6qQ0wb6/5l9VVdSTYE
 vtZA==
X-Gm-Message-State: APjAAAW/sxoFGEkNS5Z8Oo0s/VhJJWhbKc9LwjdJljh2YTWtoOShmJG1
 mMRTE0RRxTQsDv/+HGQ0zF5LHtlW
X-Google-Smtp-Source: APXvYqzfehmun7EbNuNcEtRBnu8n4lMOgjrumUE2RbAuAEaihB3+bwkrK/2IZgdet+HNKaOtdrTssA==
X-Received: by 2002:ac2:4476:: with SMTP id y22mr1816021lfl.169.1576567724365; 
 Mon, 16 Dec 2019 23:28:44 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm11919221ljd.88.2019.12.16.23.28.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 23:28:43 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 08:28:33 +0100
Message-Id: <20191217072836.11411-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232847_178563_5FA20316 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH fstools 0/3] libblkid-tiny: cherry-pick
 upstream vfat fixes
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBmaXhlcyByZWFk
aW5nIHZmYXQgbGFiZWxzLiBXaXRoIHVwZGF0ZWQgY29kZSAiTk8gTkFNRSAgICAiIGlzIG5vCmxv
bmdlciByZWFkIGFuZCBzbyBvdXIgZG93bnN0cmVhbSBoYWNrIGZvciBkcm9wcGluZyBleHRyYSBz
cGFjZXMgY2FuIGJlCmRyb3BwZWQuCgpQYWxpIFJvaMOhciAoMik6CiAgbGliYmxraWQ6IHZmYXQ6
IEZpeCByZWFkaW5nIGxhYmVscyB3aGljaCBzdGFydHMgd2l0aCBieXRlIDB4MDUKICBsaWJibGtp
ZDogdmZhdDogQ2hhbmdlIHBhcnNpbmcgbGFiZWwgaW4gc3BlY2lhbCBjYXNlcwoKUmFmYcWCIE1p
xYJlY2tpICgxKToKICBsaWJibGtpZC10aW55OiBhZGQgYmxraWRfcHJvYmVfc2V0X2lkX2xhYmVs
KCkgc3R1YgoKIGxpYmJsa2lkLXRpbnkvbGliYmxraWQtdGlueS5jIHwgIDYgKysrKysrCiBsaWJi
bGtpZC10aW55L3N1cGVyYmxvY2tzLmggICB8ICAyICstCiBsaWJibGtpZC10aW55L3ZmYXQuYyAg
ICAgICAgICB8IDE5ICsrKysrKysrLS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

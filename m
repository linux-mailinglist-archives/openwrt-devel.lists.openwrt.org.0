Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9751F067B
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 14:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uGFhIOjb36IaqlJH91WDfz7vIfDkebnB4s9RLo+IOMc=; b=O+PrSEIYEuBgtt
	c//OjNy3RkYlYIx7z9wEsYW5vzzKjVBUk3e3IiK29f+ltZVTQ4YBql9DucMvd/Zz/Erx0bpq0AkhE
	4dxslQ4WPntfQzfkNJDMnD6bCZy4XOUu+iXsffIeYk5rUYe/ogkxlqpJ+0cbn1etxO+J2FO4RrHxP
	6Q8CyUN7RCaL61DI06D1rm73c5A1Dk1UCa0zkV4muD8Y7XXYimxsD0+Yo7HgoLtCgB0vY/to3sSFs
	qpfadFBx8mkNpe980lz8F0o0EfhO2fjRAv8vkavaQXGzUVK5l9Vi0YrQ9q/SgcUOlt+z/qymCYaa7
	KtZQhMUDqEQfhaYARX+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhXse-0008Kk-7s; Sat, 06 Jun 2020 12:24:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhXs6-0007ph-6t
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 12:24:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id p5so12375603wrw.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 05:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nwFsSBLQLW7tvxfKMPi7K8h68zorZx9OeAHUlTnQqlM=;
 b=icD5H128GW0BVYQ142WIyzhHqlNpks29rVeQZ9FPssEpHMDXJNMAL7Gk5HI+b8ddW+
 v+DvaZivaZT6JBGuB4kS8dGo+e8wcfT6b67toGMjfQyy0G4T5lp75DoFyussWyIYkD3k
 z6FqT84aW+ZGKNm4FicnjOJtLD8yGy4DgBj88yI8lsQfjA4LSJOnTXQeO0j8AXs65oHi
 7u4uX0OhYbV7PlrAvu2RCwZwaU23MQkhoeoObdRwI+2koDzNUWwF+brLmcx2kOI5mJsP
 U2i3fg/SeYyXGw8Da9VXf70uMJ5g6vELVDINE8+5jUntM8XbPxMNv1rJ7XJTUz8iI1en
 D5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nwFsSBLQLW7tvxfKMPi7K8h68zorZx9OeAHUlTnQqlM=;
 b=gFBLiCsIzZVLzJF68BBhcJ6StCeTXxDYnGoPwJoXO0xivf2rX7GEJdhpZ7amU5Rkzs
 82RX3dk605se4vNp2BFJAxXW1VpmDriUw/kabHKBc5FNxILhYkS1VKvF1umgzRVkGpUm
 E8THv0tGyaOaK8ghbtwNlf+fEsScu83kzqkBIyrXOuvF4IT47jtkysM1ViNJueqaOw1c
 F7CYof03L9w1WfPbvXzaVvtCghJJQN7Huwu7G6ZJZrDJ/x9Oi/Ysa5egpvSIRYx0ZjU9
 Hd7O8NDTMMdq/fnfRdyENhK44x+yg0q+nt1+RxyvVwDL2zaCJA6PORmWQCivbb+TG8z9
 kOjw==
X-Gm-Message-State: AOAM530BnOTiMXzz7Z8zsOQ60HSdGZRC5JiuEMPSfYiOeK02V8+y0TWK
 R+g/ukLez5b7t/ive6sI8ax/fTUk
X-Google-Smtp-Source: ABdhPJxplb6XmHj645BT6IbUQfhTRcqLWYhdRfOIWF2bv30TRNdxslzdgRON5bJs1sKw0hZl1v3P4A==
X-Received: by 2002:a05:6000:1083:: with SMTP id
 y3mr13748293wrw.425.1591446260541; 
 Sat, 06 Jun 2020 05:24:20 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id d11sm2097827wrm.64.2020.06.06.05.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 05:24:19 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 06 Jun 2020 14:20:06 +0200
Message-ID: <16599052.du14X2f6X2@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_052422_249008_0AF14D48 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/4 v3] bcm63xx: image: don't add the CFE to
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
YW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IMOBbHZhcm8gRmVybsOhbmRl
eiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQpDaGFuZ2VzIGluIHYyOiByZWZyZXNoCkNo
YW5nZXMgaW4gdjM6IG5vbmUKCiB0YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9NYWtlZmlsZSB8
IDEyIC0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4
L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKaW5kZXggMDU5M2RhY2I0NC4uNWVjMzFmNjIwNyAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKKysrIGIvdGFyZ2V0
L2xpbnV4L2JjbTYzeHgvaW1hZ2UvTWFrZWZpbGUKQEAgLTIxOCwyMCArMjE4LDggQEAgZGVmaW5l
IEJ1aWxkL2NmZS1zZXJjb21tLXBhcnQKIAkJLS1wYXJ0LW5hbWUgcm9vdGZzX2xpYiBcCiAJCS0t
cGFydC12ZXJzaW9uICQoU0VSQ09NTV9WRVJTSU9OKQogCi0Jcm0gLXJmICRALWJvb3Rsb2FkZXIK
LQlta2RpciAtcCAkQC1ib290bG9hZGVyCi0JY3AgJChLRElSKS9iY202M3h4LWNmZS8kKENGRV9S
QU1fRklMRSkgJEAtYm9vdGxvYWRlci8kKENGRV9SQU1fSkZGUzJfTkFNRSkKLQkkKGNhbGwgQnVp
bGQvY2ZlLWpmZnMyLCRALWJvb3Rsb2FkZXIpCi0JJChjYWxsIEJ1aWxkL3BhZC10bywkKEJMT0NL
U0laRSkpCi0JJChUT1BESVIpL3NjcmlwdHMvc2VyY29tbS1wYXJ0aXRpb24tdGFnLnB5IFwKLQkJ
LS1pbnB1dC1maWxlICRAIFwKLQkJLS1vdXRwdXQtZmlsZSAkQC5ib290bG9hZGVyIFwKLQkJLS1w
YXJ0LW5hbWUgYm9vdGxvYWRlciBcCi0JCS0tcGFydC12ZXJzaW9uICQoU0VSQ09NTV9WRVJTSU9O
KQotCiAJbXYgJEAua2VybmVsX3Jvb3RmcyAkQAogCWRkIGlmPSRALnJvb3Rmc19saWIgPj4gJEAK
LQlkZCBpZj0kQC5ib290bG9hZGVyID4+ICRACiBlbmRlZgogCiBkZWZpbmUgQnVpbGQvY2ZlLXNl
cmNvbW0tbG9hZAotLSAKMi4yNy4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK

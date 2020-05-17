Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5D71D6B32
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 18:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2qkpgi+KeL6+ixxxXy1Z9jTs/0V12l8uI918UHPGW3w=; b=gebIBf5/mGt9l3
	GtT1Sgfjatq5pgK01iQWYFx/kHyB58d/zBu13j2UdkdzqkTujkVv8wLZazR7o771bPtdJD/OCIs3Z
	Anb3rbleWpfIUjseGf8umFfZ8M/343BO+dj/GyyrqKe3DN7DMFFbx+tl4INwzQuyw3bS8K93COdHT
	ql7EvMfxPfVjcAuE0uOJuRzqZtupNMkiaDaSQPOW3J9AM2z7hoKM4iA8RP5SR6POSaRSqdSIyWnQq
	1rr1lMKaGI/jwHaRObUSyx5hSxiWgEFBIPToZ/VaOIGKkO4SqF3qAbsPJnFBeRl3RfARHWZXn1Txf
	bE2dutrUSc8kfipKy/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMWX-0000bu-7N; Sun, 17 May 2020 16:52:25 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMWR-0000bJ-0e
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 16:52:20 +0000
Received: by mail-wr1-x42f.google.com with SMTP id s8so9029284wrt.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 17 May 2020 09:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=toz4vjkI9T7ZWz/dc5YXQuDehmIp7+N7C0F2pwGj9WA=;
 b=QJHchKtgZPUyt33fVIyZrdLFVtsVmntkF9lrmXd6bCHVJRKkeqrR1e13tWrSEAIM1L
 KJeDfY3HNHi5eFbjs7XNUKgX1J6tC7WbNjiSv6Et3uT7lPBnrOGYJVlzrj5JQG6oqeIA
 QNfSbfEBwCzv2JXs+pI1zAOIYSzwelJWNUtlkvXjDqBYtmsgXMTyO7uxdfWxtLsa6Now
 ePXOfRXyEhBbyq9v/630hrEwT/1no0dQgSHlIAai5SRk7QfFKrBYdFRRbMK97JSi5tDZ
 o6CZvFbHa657b+H6F7PKkTZt4wHPr76pSOBbbOYXFIbetFTem1ChRYETxqgElOBzISl2
 fnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=toz4vjkI9T7ZWz/dc5YXQuDehmIp7+N7C0F2pwGj9WA=;
 b=GJt/GxjchkanuOphVSAncL4msL0v/Shz1w9mZlRJhaarywOGalKWu7xoxLJS8Cj7xq
 S401tcVU6B8WBHmcq0g3T/3vSkQpmCibLISXjopjCZuJb9HrEQoq1RCJB15FuBUTGz9m
 WCXlxjwPKlqo5jizVF9axSYTJLP8dnl5AYufQQHIRTKzKjW6mRV8rU4Ib2BODVytHYI8
 ALPpOUiw8ORESH4AyR0gvLfzZjqcEwEhAkQ6A5o5vR75sjLzetDR7xtIdwcUC4ZVv30j
 mMFw+7+lvTW6owBBqvj4v9TR4uo9DdZv33JYaN4gjhrGyySXAPFteUGOB/IncMCGmtAK
 VIkg==
X-Gm-Message-State: AOAM530ExtrrpEAtY+hKxvVGhlWKlKVl6cEfiruGOqELeYPlFRr87B/n
 T7c3zHu++Q/qWoidGktXr2sZV+/mCS4=
X-Google-Smtp-Source: ABdhPJyaHEbC/tb3OYN9Uwhzvbj5AC40yA7ceoo8nsbZVLmM05qPyd31lEwk90HwjiiHTmC++N9vuQ==
X-Received: by 2002:adf:e951:: with SMTP id m17mr15384588wrn.352.1589734336885; 
 Sun, 17 May 2020 09:52:16 -0700 (PDT)
Received: from tool.localnet ([213.177.197.81])
 by smtp.googlemail.com with ESMTPSA id j1sm12588246wrm.40.2020.05.17.09.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 09:52:16 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 18:51:50 +0200
Message-ID: <3676440.c42S0g3a1G@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_095219_056593_CE027B94 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the image
 generation
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

VGhpcyBvbGQgQkNNNjM0OCBkZXZpY2Ugc3RpbGwgcnVucyBxdWl0ZSBmaW5lIHdpdGggT3Blbldy
dCBzbmFwc2hvdHMgd2hlbgp0aGUgYm9hcmQgaXMgbW9kZGVkIHdpdGggNjRNQiBvZiBSQU0uCgpS
ZWVuYWJsZSB0aGUgaW1hZ2UgZ2VuZXJhdGlvbiBhbmQgYWR2ZXJ0aXNlIHRoZSBtb2QgaW4gdGhl
IGltYWdlIGZpbGVuYW1lCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29uesOhbGV6IENhYmFuZWxh
cyA8ZGdjYnVldUBnbWFpbC5jb20+Ci0tLQogdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNt
NjN4eC5tayB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL2JjbTYzeHgubWsg
Yi90YXJnZXQvbGludXgvYmNtNjN4eC9pbWFnZS9iY202M3h4Lm1rCmluZGV4IGQ1NjAxZTJjM2Mu
LjFlNWIwYjk3NzYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2ltYWdlL2JjbTYz
eHgubWsKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgvaW1hZ2UvYmNtNjN4eC5tawpAQCAtNzU5
LDcgKzc1OSw3IEBAIGRlZmluZSBEZXZpY2UvaW52ZW50ZWxfbGl2ZWJveC0xCiAgIERFVklDRV9N
T0RFTCA6PSBMaXZlYm94IDEKICAgU09DIDo9IGJjbTYzNDgKICAgREVWSUNFX1BBQ0tBR0VTIDo9
ICQoQjQzX1BBQ0tBR0VTKSAkKFVTQjFfUEFDS0FHRVMpCi0gIERFRkFVTFQgOj0gbgorICBJTUFH
RV9OQU1FID0gJCQoSU1BR0VfUFJFRklYKS02NFJBTV9tb2QtJCQoMSkuJCQoMikKIGVuZGVmCiBU
QVJHRVRfREVWSUNFUyArPSBpbnZlbnRlbF9saXZlYm94LTEKIAotLSAKMi4yNi4yCgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

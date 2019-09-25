Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47968BE090
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 16:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngucF4oFKbaAeZb5d28eNbFS4UEBuq/Hv7epHA1sSQ4=; b=ODmsut/m9AoLfB
	/MIwNq0dFnRwIadty3l9GvHh/AuPYxj26w3oOOHgqKT0L2DL4LBkKZRJ/uOnealfbv0C4S0ZFfvUw
	vO1khkulRKAnYiyadMyMDoAVuJshXgFEhbKm5sgKF9EeOmUGuLBpYAVNHg1/hqnLXTadAgkuAz/yw
	7Dt7r8pFTMJNOtyInfEAxuVSJaBjR3rI8AZfcoZHiTRHbh41gAKY4Ix9dDcRcKgBQoa/0lXDBARLI
	squolGMMQBbDM7AnBWCv0hyXNCbmGPBl7OVDsjabJbsPIwwckTPDD5JH3bYtJcgEYQ84Sc6E6Hu1d
	4aWFxMzQRlb71pyFwGlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD8eR-0000gU-5J; Wed, 25 Sep 2019 14:52:19 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD8e0-0000Uj-9A
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 14:51:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id v24so5988474ljj.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 07:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZggSrTddAksUe5yaPN8rVIvh8W6I9OC+5oCC9i50BP0=;
 b=POVqA2OXxs4iSjM1B8nbqMONP7bM83d4S/m35uL2211MrgI5tP/m6SxBszleq+M4pv
 8nbsz2YSb+D2aSpzFeYsNW+ku+SsIUSMnHYv00ki7gxD82ieKVnI2sUFotzJ4QYGWHGk
 StetOAPyUUKZcnhw9YU6Vx3EDoPowRbvNAvWglBKFbrjWjc0uuTwz+DZGA4uzTvb3oko
 xcso7rlkEqv79nygxE/gZ5uX4/7dTAWCK/91pYXklg0SYWndA2S9VJ0UReuA3awQqy8r
 ft/BBZ17h5eDsWSJYRxo5jOr8V5lDbCqSK1xLSaAE1k/9Om1GXOXNo7f6tOLv1znLRQ1
 qXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZggSrTddAksUe5yaPN8rVIvh8W6I9OC+5oCC9i50BP0=;
 b=nl1vLSEDm1MH9xdxUCPnrNkKhU4riW+M05bTaDUB6uzgWZuXhC541HdxnQ9FD6mihG
 YTtxuaF/yK4K2iZSnvomK438mSbz6DldA5bn6Jv2NttYyzTg9bpEy1CC5Z18Q8qGA3s9
 kt39IzJgwqUMC5qXdLqTgRSIM6GeXeI8g508o5VLHlXoS/pjeC+AdL5uzHHRlJJe7MpB
 wxnUR+9SNz4y7hyU/cyoMW7g7wC9kknsOa3YYPCEQhqdTdTYSAAQNQgaYqKdhlnvRGSv
 JbrtEuynr20Oe1n1Mpe8MVt32ifvVaHKxQ88r3MqXRw1LaOzs8R2DFcJIKzIrmu1Lh9O
 Du8Q==
X-Gm-Message-State: APjAAAUVls6Om0lg0F54OrrQ7UMOrPeczDb1h2Rg2Nj1d1XHpxL0hU4d
 1fUUoyNvxC1qVEddlE/DvD81jB3W
X-Google-Smtp-Source: APXvYqy+jTOMJ2yV8EqGJZjkr3Do7tN3lbxBJHTodCw+qPNBfnnJ5Nk5jwhbg/dYYA7apAp8vsLrmw==
X-Received: by 2002:a2e:a0c5:: with SMTP id f5mr6976165ljm.114.1569423109070; 
 Wed, 25 Sep 2019 07:51:49 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 21sm1258745ljq.15.2019.09.25.07.51.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Sep 2019 07:51:48 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	Jo-Philipp Wich <jo@mein.io>
Date: Wed, 25 Sep 2019 16:51:38 +0200
Message-Id: <20190925145138.6185-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190925145138.6185-1-zajec5@gmail.com>
References: <20190925145138.6185-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_075152_317363_C7DE68B7 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH luci 2/2] luci-mod-system: check if it's
 possible to force sysupgrade
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU29tZSB2YWxpZGF0aW9u
IGVycm9ycyBtYXkgYmUgY3JpdGljYWwgZW5vdWdoIHRvIHByZXZlbnQgc3lzdXBncmFkZS4KQ2hl
Y2sgdGhlICJmb3JjZWFibGUiIHByb3BlcnR5IGFuZCBkaXNhbGxvdyBmb3JjaW5nIHN5c3VwZ3Jh
ZGUgaWYKYXBwbGljYWJsZS4gSXQgd291bGQgZmFpbCBhbnl3YXkgYXQgdGhlICJzeXN1cGdyYWRl
IiBjYWxsLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBs
PgotLS0KIC4uLi9odGRvY3MvbHVjaS1zdGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL2ZsYXNo
LmpzICAgICAgICAgIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3Mv
bHVjaS1zdGF0aWMvcmVzb3VyY2VzL3ZpZXcvc3lzdGVtL2ZsYXNoLmpzIGIvbW9kdWxlcy9sdWNp
LW1vZC1zeXN0ZW0vaHRkb2NzL2x1Y2ktc3RhdGljL3Jlc291cmNlcy92aWV3L3N5c3RlbS9mbGFz
aC5qcwppbmRleCA3ODRlYzEzNWIuLjEzNDlmZWNkNCAxMDA2NDQKLS0tIGEvbW9kdWxlcy9sdWNp
LW1vZC1zeXN0ZW0vaHRkb2NzL2x1Y2ktc3RhdGljL3Jlc291cmNlcy92aWV3L3N5c3RlbS9mbGFz
aC5qcworKysgYi9tb2R1bGVzL2x1Y2ktbW9kLXN5c3RlbS9odGRvY3MvbHVjaS1zdGF0aWMvcmVz
b3VyY2VzL3ZpZXcvc3lzdGVtL2ZsYXNoLmpzCkBAIC0zNjIsNiArMzYyLDcgQEAgcmV0dXJuIEwu
dmlldy5leHRlbmQoewogCQkJCXZhciBrZWVwID0gZG9jdW1lbnQucXVlcnlTZWxlY3RvcignW2Rh
dGEtbmFtZT0ia2VlcCJdIGlucHV0W3R5cGU9ImNoZWNrYm94Il0nKSwKIAkJCQkgICAgZm9yY2Ug
PSBFKCdpbnB1dCcsIHsgdHlwZTogJ2NoZWNrYm94JyB9KSwKIAkJCQkgICAgaXNfdmFsaWQgPSBy
ZXNbMV0udmFsaWQsCisJCQkJICAgIGlzX2ZvcmNlYWJsZSA9IHJlc1sxXS5mb3JjZWFibGUsCiAJ
CQkJICAgIGlzX3Rvb19iaWcgPSAoc3RvcmFnZV9zaXplID4gMCAmJiByZXNbMF0uc2l6ZSA+IHN0
b3JhZ2Vfc2l6ZSksCiAJCQkJICAgIGJvZHkgPSBbXTsKIApAQCAtMzg5LDcgKzM5MCw3IEBAIHJl
dHVybiBMLnZpZXcuZXh0ZW5kKHsKIAkJCQkJCV8oJ1RoZSB1cGxvYWRlZCBpbWFnZSBmaWxlIGRv
ZXMgbm90IGNvbnRhaW4gYSBzdXBwb3J0ZWQgZm9ybWF0LiBNYWtlIHN1cmUgdGhhdCB5b3UgY2hv
b3NlIHRoZSBnZW5lcmljIGltYWdlIGZvcm1hdCBmb3IgeW91ciBwbGF0Zm9ybS4nKQogCQkJCQld
KSk7CiAKLQkJCQlpZiAoIWlzX3ZhbGlkIHx8IGlzX3Rvb19iaWcpCisJCQkJaWYgKCghaXNfdmFs
aWQgfHwgaXNfdG9vX2JpZykgJiYgaXNfZm9yY2VhYmxlKQogCQkJCQlib2R5LnB1c2goRSgncCcs
IHt9LCBFKCdsYWJlbCcsIHsgJ2NsYXNzJzogJ2J0biBhbGVydC1tZXNzYWdlIGRhbmdlcicgfSwg
WwogCQkJCQkJZm9yY2UsICcgJywgXygnRm9yY2UgdXBncmFkZScpLAogCQkJCQkJRSgnYnInKSwg
RSgnYnInKSwKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK

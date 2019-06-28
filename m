Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3D597C7
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Jun 2019 11:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVstDuwfvRyezHk2TcUHufRjFcWVIPnzjgFzhoV3oCI=; b=OZiczVjAizXwz5
	bAHrO6kXowKrnuhzxHukdeJCoAEKX/vHJjbmdD9ttbiH933D6jnpkGswRTP8+bolY8GqkLh8z6aka
	5n8lnDnRkxqOce37P80winNv9Nyki6E3C0lt3tq3iO43OcyvLejr4Sc7GvjUZujduGNQ6Lfxiy3Ow
	mgOsCX8Woxh1QydMM6Z2yJDDDALEwLoTTDvtx/Fu6ND8Cj8z3XY22x78ceqqDvOCn4olpO7g7iy6+
	k4tAjksce12G016PXyN5YZNz34LIW0jWMeQ1c3Zf/ciuPWLGsDeW1sFEP/0RGFWth4vESPrcm3lY/
	8jzBcbqq19YfRXIyCGZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnNu-00077D-LK; Fri, 28 Jun 2019 09:41:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnNa-00076h-Su
 for openwrt-devel@lists.openwrt.org; Fri, 28 Jun 2019 09:41:17 +0000
Received: by mail-lj1-x244.google.com with SMTP id 16so5296218ljv.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 28 Jun 2019 02:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e40SeqqxlR1hy8iLcPvUoPG1AMneP0w0jVh5YJMQg+g=;
 b=hTgmbBUKmpEVVc31Ss2o6Ti41AiDbr1Pv7zQRVuGIL0tHpJT+qzO7/Vgvut8pfRngD
 iCodcTMp8A+O/fA6j4epsqRPxb1XYiNkGcs5YCz3UTSPgxr1F5liDicUxUTkuTdP/7b+
 7DQz1new7QJLrkthwzRHxOXh6+dD8JqirlfNsWNx/ENZj6J2J9oGqEZLq32Lxoz+1xgT
 YbVPoEV4w8bhWenMZpd03w4OxIC60XXzXZuooXOCBu/uxM8KiFXD5tGeFZ04mBF5Ia19
 ZipzfVPIBsyQMhNjJQCzbhH06ZUTerp/wpTMvQeS42/QcWWKzMLFcFlFblNOfw9K6JSq
 nfOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e40SeqqxlR1hy8iLcPvUoPG1AMneP0w0jVh5YJMQg+g=;
 b=ny/51KTviGG/F+eS8ebWGB23aS5y7u5C2lURTFfGC+f/yloumUruxLWjTiO6drTNCq
 CgRKeAlDe5kJ23qeYrjeMetzw0rflTJXPXQNrkH4bRGNPwvbwg4Z9x5s7hCv15n3rQxF
 XDptGB3oLUZbO8XOatsoSPIs5df53iOmlfU663/h1Y1zCDQFqhSYn3DqpxtO6/FRdkrO
 bSvtDUVdWBazZIwRhA42NOZg4hDiehheSSYb89qx80TV15ehrpq5MdjCPRJ4fMCMkTj6
 oX1QhGRMOdpF8CeMxfCdaeQbtSkXu+NOOt/3MxIl321YV8uZ2J1mtqAvO37OxCXGQ8QT
 cx4Q==
X-Gm-Message-State: APjAAAUIuoFDTwzbc3ucj5VCQ1sgnwCmY1WWq8JUV77DCMP+0qEEkVB9
 k5OcIPLV6/N+GIYSGXycGwoPTqSo
X-Google-Smtp-Source: APXvYqwzZRPN9QNGNmFIG5IsvQwsEYQB/25cBY6/ZedMyJbwm9YcvGNU76QYbfxbGSqZmk2QK083BA==
X-Received: by 2002:a2e:551d:: with SMTP id j29mr5683159ljb.213.1561714872547; 
 Fri, 28 Jun 2019 02:41:12 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id p5sm527062ljb.91.2019.06.28.02.41.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 02:41:11 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Jun 2019 11:41:02 +0200
Message-Id: <20190628094102.32434-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_024115_172159_247785DA 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] lua: fix build with MacOS's make
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
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgYXBwYXJlbnRseSBy
ZXF1aXJlcyBwYXNzaW5nIFYgdmFyaWFibGUgZXhwbGljaXRseS4KCkZpeGVzOiBmZTU5YjQ2Y2E3
ZTAgKCJsdWE6IGluY2x1ZGUgdmVyc2lvbiBudW1iZXIgaW4gaW5zdGFsbGVkIGZpbGVzIikKUmVw
b3J0ZWQtYnk6IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxsZGlyQGRhcmJ5c2hpcmUtYnJ5YW50
Lm1lLnVrPgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
Ci0tLQogLi4uL2x1YS9wYXRjaGVzLWhvc3QvMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIucGF0
Y2ggICAgfCA5ICsrKysrKysrKwogLi4uL3V0aWxzL2x1YS9wYXRjaGVzLzAwMS1pbmNsdWRlLXZl
cnNpb24tbnVtYmVyLnBhdGNoICAgfCA5ICsrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxOCBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy1ob3N0
LzAwMS1pbmNsdWRlLXZlcnNpb24tbnVtYmVyLnBhdGNoIGIvcGFja2FnZS91dGlscy9sdWEvcGF0
Y2hlcy1ob3N0LzAwMS1pbmNsdWRlLXZlcnNpb24tbnVtYmVyLnBhdGNoCmluZGV4IGI3MDU2ZmQ0
N2MuLmY3NjllNjA3MzYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMtaG9z
dC8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRjaAorKysgYi9wYWNrYWdlL3V0aWxzL2x1
YS9wYXRjaGVzLWhvc3QvMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIucGF0Y2gKQEAgLTI0LDYg
KzI0LDE1IEBAIGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlCiAgCiAgIyBMdWEgdmVy
c2lvbiBhbmQgcmVsZWFzZS4KICBWPSA1LjEKK0BAIC01Myw3ICs1Myw3IEBAIFI9IDUuMS41Cisg
YWxsOgkkKFBMQVQpCisgCisgJChQTEFUUykgY2xlYW46CistCWNkIHNyYyAmJiAkKE1BS0UpICRA
CisrCWNkIHNyYyAmJiAkKE1BS0UpICRAIFY9JFYKKyAKKyB0ZXN0OglkdW1teQorIAlzcmMvbHVh
IHRlc3QvaGVsbG8ubHVhCiBkaWZmIC0tZ2l0IGEvZG9jL2x1YS4xIGIvZG9jL2x1YTUuMS4xCiBy
ZW5hbWUgZnJvbSBkb2MvbHVhLjEKIHJlbmFtZSB0byBkb2MvbHVhNS4xLjEKZGlmZiAtLWdpdCBh
L3BhY2thZ2UvdXRpbHMvbHVhL3BhdGNoZXMvMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIucGF0
Y2ggYi9wYWNrYWdlL3V0aWxzL2x1YS9wYXRjaGVzLzAwMS1pbmNsdWRlLXZlcnNpb24tbnVtYmVy
LnBhdGNoCmluZGV4IGI3MDU2ZmQ0N2MuLmY3NjllNjA3MzYgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uv
dXRpbHMvbHVhL3BhdGNoZXMvMDAxLWluY2x1ZGUtdmVyc2lvbi1udW1iZXIucGF0Y2gKKysrIGIv
cGFja2FnZS91dGlscy9sdWEvcGF0Y2hlcy8wMDEtaW5jbHVkZS12ZXJzaW9uLW51bWJlci5wYXRj
aApAQCAtMjQsNiArMjQsMTUgQEAgZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKICAK
ICAjIEx1YSB2ZXJzaW9uIGFuZCByZWxlYXNlLgogIFY9IDUuMQorQEAgLTUzLDcgKzUzLDcgQEAg
Uj0gNS4xLjUKKyBhbGw6CSQoUExBVCkKKyAKKyAkKFBMQVRTKSBjbGVhbjoKKy0JY2Qgc3JjICYm
ICQoTUFLRSkgJEAKKysJY2Qgc3JjICYmICQoTUFLRSkgJEAgVj0kVgorIAorIHRlc3Q6CWR1bW15
CisgCXNyYy9sdWEgdGVzdC9oZWxsby5sdWEKIGRpZmYgLS1naXQgYS9kb2MvbHVhLjEgYi9kb2Mv
bHVhNS4xLjEKIHJlbmFtZSBmcm9tIGRvYy9sdWEuMQogcmVuYW1lIHRvIGRvYy9sdWE1LjEuMQot
LSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=

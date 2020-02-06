Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6103215445B
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 13:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+TAJkvOO+b6VSsgjUaeg9MHRSveIDnwLuGkn/fwMzbs=; b=LOB6POZN6rTKZ9
	clK88A54A75YlvdFZScl/5RcK/VjZTuWSnZGwuJna4iQ6zRuv2rPA3m+oHgnurrPr9dsCteatddxr
	DWxfc2LGGPUm7itPNwteb6uj7oNxoKd1J2qk01NON2/aD1iNULFbhjpsdypYk2hdvm0NTRZTDkiZl
	0/inOy2cs807Z1O5fL+Igxh6ITcjtvHKBBRO4AWac5TtNdN6KpCUzqZNNkIwXtvQ0kHXJ6nsk+H9C
	Tf5bNMI0uWapatI7TcPXUM8J6QrS9bmavIIpsRczlHlkdaymCwSjOUpMtmEEmhWuTWNLG8NRklpFp
	EBBZoMPgZCnFiYxJwbSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgix-000815-6b; Thu, 06 Feb 2020 12:57:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgip-00080b-TB
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 12:57:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id o15so5996648ljg.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 04:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQ7aRYT8HFK/AsihOr+4lHPPUPM9DYe/fcNjqZVJfu0=;
 b=Dm8qKgPraOflkN6A0768630R+MIvmgr36ColHSAQnNN05aSLA8YNpjNi9wSUwq/GJ7
 OCBPh+KScLhTsErVgXlhdgjMZJ0d36cNhaWidLgP/Y1DZ5bNAUmZ/QSYgnGNc5cjQQN4
 ArdME7L/jRWPJmZgyxy+PyUmFTfxABHRSLNzl9SHOJLsSKLn1wlqa7fgFrS0UuCCH2ip
 owcuL2Ujbq6Ksgx+I8AT94U1aKHbhiv1GJHCWxtV0+P5OCAYf0QENWkqtP+cD/hUiiec
 VldKgXqLxPOc56PWl7D42Gz22CwjC9x+bTqWbkaE9nYt8HkigGr08+UQkuhVe0NaK/ml
 VRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iQ7aRYT8HFK/AsihOr+4lHPPUPM9DYe/fcNjqZVJfu0=;
 b=CYD0ssQ1D/1pTjDufPDlfoF0zLtFmK60qsyI2g11nD/zE3sl5voL4y4uE5o6SvcIY+
 61BWSptojPbujalHatLK2nCDKgZSedcVh9sBDtKyAvD5gWPHikXvf9xl0meR708wcFOG
 LW51NJrN9TipuM/Pxm3Y0yxbFwWbNzBvIFbmyI3A6oQQFpPBO+VukyOatakq81JrzFnc
 VjQ9lwFrAoHQcsZ99ni6W0P1FTemyQaNhJzf7jFtNwzew+8B5yvAsj/VG363NQT+Qy55
 XKDPpgir150XfLUyWfRFS8OfXFz/ycZUJ82khmTVnxMpbTdnmWgjg3RgZQpoMZHcl04Q
 MiSQ==
X-Gm-Message-State: APjAAAUNtUVFRsXShSK8BvPvClqV8lvySvxFjMC4Iw3+KyEKBFO1U9tw
 mpScEHk5GxXS36P8xN0giSKvo68o
X-Google-Smtp-Source: APXvYqySxXuml13wp1+GM/8gyhvZkz4FcVqiOvQGAvhzgRxHP1E5szAmqbkSUdzzqEJSs9nax44V0A==
X-Received: by 2002:a2e:7d01:: with SMTP id y1mr2098411ljc.100.1580993847199; 
 Thu, 06 Feb 2020 04:57:27 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m15sm1421042ljg.4.2020.02.06.04.57.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 04:57:26 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  6 Feb 2020 13:57:11 +0100
Message-Id: <20200206125711.19639-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_045731_944529_02C49289 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] kernel: rewrite run_parsers_by_type() to
 use add_mtd_partitions()
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
Cc: Bruno Pena <brunompena@gmail.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKTWFrZSBydW5fcGFyc2Vy
c19ieV90eXBlKCkgbW9yZSBzaW1pbGFyIHRvIHRoZSBwYXJzZV9tdGRfcGFydGl0aW9ucygpOgox
LiBVc2Ugc3RydWN0IG10ZF9wYXJ0aXRpb25zCjIuIFVzZSBhZGRfbXRkX3BhcnRpdGlvbnMoKQoK
VGhpcyBjaGFuZ2Ugc2ltcGxpZmllcyBydW5fcGFyc2Vyc19ieV90eXBlKCkgYnk6CjEuIERyb3Bw
aW5nIGxvb3AKMi4gRHJvcHBpbmcgY29kZSBnZXR0aW5nIHBhcnRpdGlvbiBwcm9wZXJ0aWVzIChu
YW1lLCBvZmZzZXQsIHNpemUpCgpNb3Jlb3ZlciB0aGlzIGNoYW5nZSBhbGxvd3MgcGFzc2luZyBt
b3JlIHBhcnRpdGlvbnMgZGV0YWlscyAoZS5nLgptYXNrX2ZsYWdzKS4KCk9uZSBub3RpY2VhYmxl
IGNoYW5nZSBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2ggaXMgYWRkaW5nIHBhcnNlZApwYXJ0aXRp
b25zIGFzIGNoaWxkcmVuLiBUaGlzIHJlc3VsdHMgaW4gcHJpbnRpbmcgdGhlaXIgKnJlbGF0aXZl
KgpvZmZzZXRzIHdoaWNoIHVuaWZpZXMgdGhpcyBjb2RlIHdpdGggcGFyc2VfbXRkX3BhcnRpdGlv
bnMoKSBiZWhhdmlvdXIuCgpCZWZvcmU6ClsgICAgMS43ODU0NDhdIDB4MDAwMDAwMThmODAwLTB4
MDAwMDAwZmIwMDAwIDogInJvb3RmcyIKWyAgICAxLjc5MTY0Ml0gbXRkOiBkZXZpY2UgNCAocm9v
dGZzKSBzZXQgdG8gYmUgcm9vdCBmaWxlc3lzdGVtClsgICAgMS43OTc1MzddIDEgc3F1YXNoZnMt
c3BsaXQgcGFydGl0aW9ucyBmb3VuZCBvbiBNVEQgZGV2aWNlIHJvb3RmcwpbICAgIDEuODA0MDA5
XSAweDAwMDAwMDRlMDAwMC0weDAwMDAwMGZiMDAwMCA6ICJyb290ZnNfZGF0YSIKCkFmdGVyOgpb
ICAgIDEuNzg1Mzc2XSAweDAwMDAwMDE4ZjgwMC0weDAwMDAwMGZiMDAwMCA6ICJyb290ZnMiClsg
ICAgMS43OTE2MDFdIG10ZDogZGV2aWNlIDQgKHJvb3Rmcykgc2V0IHRvIGJlIHJvb3QgZmlsZXN5
c3RlbQpbICAgIDEuNzk3NDkxXSAxIHNxdWFzaGZzLXNwbGl0IHBhcnRpdGlvbnMgZm91bmQgb24g
TVREIGRldmljZSByb290ZnMKWyAgICAxLjgwMzkzNl0gQ3JlYXRpbmcgMSBNVEQgcGFydGl0aW9u
cyBvbiAicm9vdGZzIjoKWyAgICAxLjgwODkxMF0gMHgwMDAwMDAzNTA4MDAtMHgwMDAwMDBlMjA4
MDAgOiAicm9vdGZzX2RhdGEiCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFs
QG1pbGVja2kucGw+Ci0tLQogLi4uZm9yLWRpZmZlcmVudC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVz
LnBhdGNoIHwgMzMgKysrKysrKy0tLS0tLS0tLS0tLQogLi4uYXJzZXJzLWZvci1yb290ZnMtYW5k
LWZpcm13YXJlLXNwbGl0LnBhdGNoIHwgIDQgKy0tCiAuLi4vNDA0LW10ZC1hZGQtbW9yZS1oZWxw
ZXItZnVuY3Rpb25zLnBhdGNoICAgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvZ2VuZXJp
Yy9wZW5kaW5nLTQuMTQvNDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlv
bi1wYXJzZXItdHlwZXMucGF0Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQv
NDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlvbi1wYXJzZXItdHlwZXMu
cGF0Y2gKaW5kZXggMDU3ZDQ3MzY4NC4uYWUxMzExMmVmNiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xp
bnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMS1tdGQtYWRkLXN1cHBvcnQtZm9yLWRpZmZlcmVu
dC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVzLnBhdGNoCisrKyBiL3RhcmdldC9saW51eC9nZW5lcmlj
L3BlbmRpbmctNC4xNC80MDEtbXRkLWFkZC1zdXBwb3J0LWZvci1kaWZmZXJlbnQtcGFydGl0aW9u
LXBhcnNlci10eXBlcy5wYXRjaApAQCAtMjAsNDQgKzIwLDM1IEBAIFNpZ25lZC1vZmYtYnk6IEdh
Ym9yIEp1aG9zIDxqdWhvc2dAb3BlbndydC5vcmc+CiAgCiAgLyoKICAgKiBHaXZlbiBhIHBvaW50
ZXIgdG8gdGhlIE1URCBvYmplY3QgaW4gdGhlIG10ZF9wYXJ0IHN0cnVjdHVyZSwgd2UgY2FuIHJl
dHJpZXZlCi1AQCAtNzYyLDYgKzc2NiwzNiBAQCBpbnQgbXRkX2RlbF9wYXJ0aXRpb24oc3RydWN0
IG10ZF9pbmZvICptCitAQCAtNzYyLDYgKzc2NiwyNyBAQCBpbnQgbXRkX2RlbF9wYXJ0aXRpb24o
c3RydWN0IG10ZF9pbmZvICptCiAgfQogIEVYUE9SVF9TWU1CT0xfR1BMKG10ZF9kZWxfcGFydGl0
aW9uKTsKICAKICtzdGF0aWMgaW50CiArcnVuX3BhcnNlcnNfYnlfdHlwZShzdHJ1Y3QgbXRkX3Bh
cnQgKnNsYXZlLCBlbnVtIG10ZF9wYXJzZXJfdHlwZSB0eXBlKQogK3sKLSsJc3RydWN0IG10ZF9w
YXJ0aXRpb24gKnBhcnRzOwotKwlpbnQgbnJfcGFydHM7Ci0rCWludCBpOworKwlzdHJ1Y3QgbXRk
X3BhcnRpdGlvbnMgcHBhcnRzID0geyB9OworKwlpbnQgZXJyOwogKwotKwlucl9wYXJ0cyA9IHBh
cnNlX210ZF9wYXJ0aXRpb25zX2J5X3R5cGUoJnNsYXZlLT5tdGQsIHR5cGUsIChjb25zdCBzdHJ1
Y3QgbXRkX3BhcnRpdGlvbiAqKikmcGFydHMsCi0rCQkJCQkJTlVMTCk7Ci0rCWlmIChucl9wYXJ0
cyA8PSAwKQotKwkJcmV0dXJuIG5yX3BhcnRzOworKwlwcGFydHMubnJfcGFydHMgPSBwYXJzZV9t
dGRfcGFydGl0aW9uc19ieV90eXBlKCZzbGF2ZS0+bXRkLCB0eXBlLAorKwkJCQkJCSAgICAgICAm
cHBhcnRzLnBhcnRzLCBOVUxMKTsKKysJaWYgKHBwYXJ0cy5ucl9wYXJ0cyA8PSAwKQorKwkJcmV0
dXJuIHBwYXJ0cy5ucl9wYXJ0czsKICsKLSsJaWYgKFdBUk5fT04oIXBhcnRzKSkKKysJaWYgKFdB
Uk5fT04oIXBwYXJ0cy5wYXJ0cykpCiArCQlyZXR1cm4gMDsKICsKLSsJZm9yIChpID0gMDsgaSA8
IG5yX3BhcnRzOyBpKyspIHsKLSsJCS8qIGFkanVzdCBwYXJ0aXRpb24gb2Zmc2V0cyAqLwotKwkJ
cGFydHNbaV0ub2Zmc2V0ICs9IHNsYXZlLT5vZmZzZXQ7CisrCWVyciA9IGFkZF9tdGRfcGFydGl0
aW9ucygmc2xhdmUtPm10ZCwgcHBhcnRzLnBhcnRzLCBwcGFydHMubnJfcGFydHMpOwogKwotKwkJ
bXRkX2FkZF9wYXJ0aXRpb24oc2xhdmUtPnBhcmVudCwKLSsJCQkJICBwYXJ0c1tpXS5uYW1lLAot
KwkJCQkgIHBhcnRzW2ldLm9mZnNldCwKLSsJCQkJICBwYXJ0c1tpXS5zaXplKTsKLSsJfQotKwot
KwlrZnJlZShwYXJ0cyk7CisrCWtmcmVlKHBwYXJ0cy5wYXJ0cyk7CiArCi0rCXJldHVybiBucl9w
YXJ0czsKKysJcmV0dXJuIGVyciA/IGVyciA6IHBwYXJ0cy5ucl9wYXJ0czsKICt9CiArCiAgI2lm
ZGVmIENPTkZJR19NVERfU1BMSVRfRklSTVdBUkVfTkFNRQogICNkZWZpbmUgU1BMSVRfRklSTVdB
UkVfTkFNRQlDT05GSUdfTVREX1NQTElUX0ZJUk1XQVJFX05BTUUKICAjZWxzZQotQEAgLTExNDcs
NiArMTE4MSw2MSBAQCB2b2lkIG10ZF9wYXJ0X3BhcnNlcl9jbGVhbnVwKHN0cnVjdCBtdGRfCitA
QCAtMTE0Nyw2ICsxMTcyLDYxIEBAIHZvaWQgbXRkX3BhcnRfcGFyc2VyX2NsZWFudXAoc3RydWN0
IG10ZF8KICAJfQogIH0KICAKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRp
bmctNC4xNC80MDItbXRkLXVzZS10eXBlZC1tdGQtcGFyc2Vycy1mb3Itcm9vdGZzLWFuZC1maXJt
d2FyZS1zcGxpdC5wYXRjaCBiL3RhcmdldC9saW51eC9nZW5lcmljL3BlbmRpbmctNC4xNC80MDIt
bXRkLXVzZS10eXBlZC1tdGQtcGFyc2Vycy1mb3Itcm9vdGZzLWFuZC1maXJtd2FyZS1zcGxpdC5w
YXRjaAppbmRleCAyY2MwNmRkNDYzLi4xNDljMzI4YWM0IDEwMDY0NAotLS0gYS90YXJnZXQvbGlu
dXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNDAyLW10ZC11c2UtdHlwZWQtbXRkLXBhcnNlcnMtZm9y
LXJvb3Rmcy1hbmQtZmlybXdhcmUtc3BsaXQucGF0Y2gKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVy
aWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNlLXR5cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMt
YW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoCkBAIC0xMCw3ICsxMCw3IEBAIFNpZ25lZC1vZmYtYnk6
IEdhYm9yIEp1aG9zIDxqdWhvc2dAb3BlbndydC5vcmc+CiAKIC0tLSBhL2RyaXZlcnMvbXRkL210
ZHBhcnQuYwogKysrIGIvZHJpdmVycy9tdGQvbXRkcGFydC5jCi1AQCAtODA0LDYgKzgwNCw3IEBA
IHJ1bl9wYXJzZXJzX2J5X3R5cGUoc3RydWN0IG10ZF9wYXJ0ICpzbGEKK0BAIC03OTUsNiArNzk1
LDcgQEAgcnVuX3BhcnNlcnNfYnlfdHlwZShzdHJ1Y3QgbXRkX3BhcnQgKnNsYQogIAogIHN0YXRp
YyB2b2lkIHNwbGl0X2Zpcm13YXJlKHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLCBzdHJ1Y3QgbXRk
X3BhcnQgKnBhcnQpCiAgewpAQCAtMTgsNyArMTgsNyBAQCBTaWduZWQtb2ZmLWJ5OiBHYWJvciBK
dWhvcyA8anVob3NnQG9wZW53cnQub3JnPgogIH0KICAKICBzdGF0aWMgdm9pZCBtdGRfcGFydGl0
aW9uX3NwbGl0KHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLCBzdHJ1Y3QgbXRkX3BhcnQgKnBhcnQp
Ci1AQCAtODEzLDYgKzgxNCwxMiBAQCBzdGF0aWMgdm9pZCBtdGRfcGFydGl0aW9uX3NwbGl0KHN0
cnVjdCBtCitAQCAtODA0LDYgKzgwNSwxMiBAQCBzdGF0aWMgdm9pZCBtdGRfcGFydGl0aW9uX3Nw
bGl0KHN0cnVjdCBtCiAgCWlmIChyb290ZnNfZm91bmQpCiAgCQlyZXR1cm47CiAgCmRpZmYgLS1n
aXQgYS90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQuMTQvNDA0LW10ZC1hZGQtbW9yZS1o
ZWxwZXItZnVuY3Rpb25zLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0
LzQwNC1tdGQtYWRkLW1vcmUtaGVscGVyLWZ1bmN0aW9ucy5wYXRjaAppbmRleCA3YjQ4MWZmYjQ3
Li5kMWEzMjg3MmFmIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQu
MTQvNDA0LW10ZC1hZGQtbW9yZS1oZWxwZXItZnVuY3Rpb25zLnBhdGNoCisrKyBiL3RhcmdldC9s
aW51eC9nZW5lcmljL3BlbmRpbmctNC4xNC80MDQtbXRkLWFkZC1tb3JlLWhlbHBlci1mdW5jdGlv
bnMucGF0Y2gKQEAgLTExLDcgKzExLDcgQEAgU2lnbmVkLW9mZi1ieTogR2Fib3IgSnVob3MgPGp1
aG9zZ0BvcGVud3J0Lm9yZz4KIAogLS0tIGEvZHJpdmVycy9tdGQvbXRkcGFydC5jCiArKysgYi9k
cml2ZXJzL210ZC9tdGRwYXJ0LmMKLUBAIC0xMjYwLDYgKzEyNjAsMjQgQEAgaW50IG10ZF9pc19w
YXJ0aXRpb24oY29uc3Qgc3RydWN0IG10ZF9pbgorQEAgLTEyNTEsNiArMTI1MSwyNCBAQCBpbnQg
bXRkX2lzX3BhcnRpdGlvbihjb25zdCBzdHJ1Y3QgbXRkX2luCiAgfQogIEVYUE9SVF9TWU1CT0xf
R1BMKG10ZF9pc19wYXJ0aXRpb24pOwogIAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

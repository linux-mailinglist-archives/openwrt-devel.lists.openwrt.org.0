Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28719AB1EF
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 07:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Huvq8ngQa9N8tZb8Nj0Do6iu/CspE4DAI4JrUW29cas=; b=bwEqsltilitYOp
	eeAKrPjklRnDo15qQDMCj0rpL8SW3IhqIV1xDYf3E67DMtw1cSstaanzJDBTxIi4WaSeIEws8UWbo
	XRchQ6riJp9F0bYGpTeKvfcgl6xUsugCR6RavZPUU2AkC2BK/+FydziXzPYJthTDXVrGJMrgOA2Zl
	wh/QIJ1Afckefr9vMNkc7nT5hSjI5/tHbqDsAm/yFWVbDeH/BW8UUxwEykaaC8CiRF5RJOcV2u+oh
	85Dx0fTcw836s+q6D+XHuAbomvTREQfzjc00GI46SI/9x40ZDP2wMogsfl1T79B6JB1FuUnx7fKyW
	M7zUoUMIvm/AStAQGURQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i66XH-00078z-G8; Fri, 06 Sep 2019 05:11:51 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i66X1-00070k-4Y
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 05:11:37 +0000
Received: by mail-lj1-x242.google.com with SMTP id e17so4717586ljf.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 22:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=azKAzl+/vsbIjO+ViVSbR2Cd1GCsZXcy1h0nKvlo+Pk=;
 b=UCoyJWkmR1kgAYGkS4hTTvjONS0Wu6YQMcngh0zV0WCtPufD4fRPLK6OKhVBIcJuAY
 /qnDSM7g/ssuCWm3tbgsv3ZAEjNzAAi6Z/Z7WnDdGRKDCEs4T5ufJ99+0uo4lBfNOiK9
 Es+8JCFjprSV6sfxynTMdZVJ1ld9kYJRSrLFX6ettjWthbMYSc8vRgT2oXA1JvyV33ri
 fhhrharj5QElTPFnUYvyaIwG8+B91k8uhu8VkIvU7hy07IsfHFPIy9UsP3Lo9hxBotBx
 1GFy29zxUZ8mC8CvAlaLy1egXy0Z2KPVjU1BTXXCAWGW9BcLDUtXuP5yJHBAAHBHmNOm
 3srw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=azKAzl+/vsbIjO+ViVSbR2Cd1GCsZXcy1h0nKvlo+Pk=;
 b=Ih//c73psSWWhjX70xNbRUOh/tlIP3id2MTNCPmW0rJR4wJs2MmNaRyUYFJScXqvKB
 eIpv4HhgH4Y5bE6o9uhYJzP0JrPSBr+G6QbEMQqYJ32Vvch4n0o+SLyY3H2e2yQB6s9n
 ssvN0pERs+q4SA3AHFEpVwmdYlQS/wHBijDqUsVP3XctQJgCJ4SmkEL2Ln2BuEZZPczy
 oQdtWovcxh3UJh9OxleytiKWymcCH7Jy0fRELJDqcjJtUYLlevrsUirhQ+d8TpTwExKQ
 qe17hrUIwUonb8G9TrfMGbhj4ZId3RQq3LoKK4st3qekG2I4Br5MkLj4Ns9ksbzRZFHp
 R8GQ==
X-Gm-Message-State: APjAAAXIlBK5jAVSs92jCeXwMypK9vBoW3rvZaxo2L1TcQ+bNswwFCsQ
 cOWJSkPUasTL4ft0PUDtOiYbMCz5
X-Google-Smtp-Source: APXvYqwXPhrZRF4hPAGPFvR1BhqVRZ3AG28t43S9/3zlrPRI5kJBX3xUoNP4J/HpI2JH9kEbLABFEQ==
X-Received: by 2002:a2e:5714:: with SMTP id l20mr4507358ljb.122.1567746689341; 
 Thu, 05 Sep 2019 22:11:29 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m10sm869405lfo.69.2019.09.05.22.11.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 22:11:28 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 07:10:52 +0200
Message-Id: <20190906051054.18311-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906051054.18311-1-zajec5@gmail.com>
References: <20190906051054.18311-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_221135_187718_4C76DA38 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/3] base-files: sysupgrade: pass "backup"
 ubus attribute
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
 Jonas Gorski <jonas.gorski@gmail.com>, Jo-Philipp Wich <jo@mein.io>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBleHBsaWNpdGx5
IHRlbGxzIHByb2NkIHdoYXQgYmFja3VwIGZpbGUgc2hvdWxkIGJlIHVzZWQgZHVyaW5nCnN5c3Vw
Z3JhZGUgKGlmIGFueSkuIEl0J3MgbXVjaCBtb3JlIGdlbmVyaWMgdGhpcyB3YXkgY29tcGFyZWQg
dG8gdGhlCm1hZ2ljIC90bXAvc3lzdXBncmFkZS50Z3ogZmlsZSB0aGF0IGhhZCB0byBiZSBjcmVh
dGVkIGJlZm9yZSBhIGNhbGwuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFs
QG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFk
ZSB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
cGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZSBiL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUKaW5kZXggZjEwNmMzYzk4MS4uZjE4MTQzYmZmNCAx
MDA3NTUKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZQorKysg
Yi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCkBAIC0zNjIsMTAgKzM2
MiwxMyBAQCBpZiBbIC1uICIkRkFJTFNBRkUiIF07IHRoZW4KIGVsc2UKIAlmb3JjZV9hdHRyPSIi
CiAJWyAkRk9SQ0UgLWVxIDEgXSAmJiBmb3JjZV9hdHRyPSJcImZvcmNlXCI6IHRydWUsIgorCWJh
Y2t1cF9hdHRyPSIiCisJWyAkU0FWRV9DT05GSUcgLWVxIDEgXSAmJiBiYWNrdXBfYXR0cj0iXCJi
YWNrdXBcIjogJChqc29uX3N0cmluZyAkQ09ORl9UQVIpLCIKIAl1YnVzIGNhbGwgc3lzdGVtIHN5
c3VwZ3JhZGUgInsKIAkJXCJwcmVmaXhcIjogJChqc29uX3N0cmluZyAiJFJBTV9ST09UIiksCiAJ
CVwicGF0aFwiOiAkKGpzb25fc3RyaW5nICIkSU1BR0UiKSwKIAkJJGZvcmNlX2F0dHIKKwkJJGJh
Y2t1cF9hdHRyCiAJCVwiY29tbWFuZFwiOiAkKGpzb25fc3RyaW5nICIkQ09NTUFORCIpLAogCQlc
Im9wdGlvbnNcIjogewogCQkJXCJzYXZlX2NvbmZpZ1wiOiAkU0FWRV9DT05GSUcsCi0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

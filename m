Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF4C12BECD
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 21:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AvzIBVbMUqU9FkBpSfxYAQOrUDOCpg+LAPiWn6H1gs=; b=qM6MVJsE7vMl7e
	AAOKIX6pJ4gMjFb0sNi4Y5EPhrkyHc0sNeOjG3lAmWRlGFVq6OjSct2GkrmsFlztL0870lm0OdB4h
	jNWqc3TpDaaKIOQz/m1uPHq9cbFYRAym1rP/b/0pPKGBuplK4if9cFbUYfiVa74uPEza7x4TczW8J
	VlLmZ8XSCwkYw9clV2uD1XHwtspWI+V0wheDtMXxOMpgl/cDjsIQBSq3tDu16a7qTj8PbHreJe+Oy
	8YxWyNTR9sZZD449w1ZEoVa4nNPnAZXN1UCajB4MHEZ5adutKnz9svhvgQPOWAb+79PYrWy0k7PfG
	mVPWKaZTQ5IGVU8r5K1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilIO2-0005qL-Da; Sat, 28 Dec 2019 20:08:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilINt-0005q0-Cl
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 20:08:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id d73so10941438wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 12:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpojINqBfa28JjoMTcfSngsWBTjm4gZkVS0H0Xoru7Q=;
 b=psEJgadYetN8Oik3CCGEbNiyWr0coJQp7smI5IWCagCcq6ID30td81ypQ4xNQqGMjS
 0BluSugUfkFF+oZjeguuXQcXEshMv/in0X7qeugTHY+EXB5mSpWuUPZjr1M+4V4sH/Qe
 i2/cKeyInO/DMCM4L4Hdc3UmuszN2xk2g2Fh7QModRb++grlyeecAoRsAQ7Vuukpc6DP
 ojvBVW3RSC02qC6x20FegDYknKccJyZRGFRbpJX2apdywFQKcX+nYvbC+QKbZlekN6eF
 txWGXJD7qXnzG/7z3Bpk8gdn4ZjH1Dv5scA2CQnwXXlYJu5mLd5Hyglpv2iaPfNM4dhU
 Y6pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpojINqBfa28JjoMTcfSngsWBTjm4gZkVS0H0Xoru7Q=;
 b=uPsROfRwIJMt1WxFaqvSPWoFsPTc/tru+Yyp9mJcWN8mevv+X8olBMd1Kj84Lnqflc
 0ORBT+LXuxKEeFf0f6yniyCsGEYyv+XypgsED6q5ohhWtlviDwt3YDUbauq3lxhoNiYc
 LxMQhETKdTZy1VNv6J1A2yZ4GXvtonGlJv0OzmbVOLoTZ55l3LhvERigL9QFXVs6Wr3I
 RKL/qB8YsPhIUqMSmaMyR4+PROfv26kns964eYT1DsXoZmYpYLHFAaWQbd1FPHr7pthw
 NIimERwy68MbNxAy9X7HOmSjIJ0o1T5k8491YJ622J49kaO86JS2n9soxj0OSnEd94a8
 4cBw==
X-Gm-Message-State: APjAAAXLRii7N0uon+TVoSLsmrdodRtlrNs57fa9iwZ4Y7IBexM3sniK
 aRjWZ0+AwQWhT0fSzyTZJLlT6rglqd8N6gLCfbXsszheICtw7pCxq+NlKJdZoMC+wxB0CMl3CO4
 Y6I7QLHn1s3FyecQEin9zYSTG3HvZj4CCxpmck4x0yDlQ8+aOFd/MgKoFyjb/RCA+YoRe9NxhC5
 pE4kDHUQLg
X-Google-Smtp-Source: APXvYqwxRNkYxfg7qF4/iVJ9nznkHshc2L0zpYVcZXWed23TwdmRG7nIDbYZWRNNpXG8IWAAvPwZzw==
X-Received: by 2002:a1c:3c89:: with SMTP id j131mr25311321wma.34.1577563703934; 
 Sat, 28 Dec 2019 12:08:23 -0800 (PST)
Received: from localhost.localdomain (185-18-60-243.cgn.optinet.hr.
 [185.18.60.243])
 by smtp.googlemail.com with ESMTPSA id g7sm39445493wrq.21.2019.12.28.12.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Dec 2019 12:08:23 -0800 (PST)
From: =?UTF-8?q?Luka=20Ko=C5=BEnjak?= <luka.koznjak@sartura.hr>
To: openwrt-devel@lists.openwrt.org,
	luka.koznjak@sartura.hr
Date: Sat, 28 Dec 2019 21:07:27 +0100
Message-Id: <20191228200727.1117297-1-luka.koznjak@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_120825_433767_186C4511 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] file: fix segfault in uci_parse_config
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
Cc: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>,
 Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4IGEgc2VnbWVudGF0aW9uIGZhdWx0IGNhdXNlZCBieSB1c2luZyBhIHBvaW50ZXIgdG8gYSBy
ZWFsbG9jYXRlZAphZGRyZXNzLiBUaGUgbmFtZSBwb2ludGVyIGluIHRoZSB1Y2lfcGFyc2VfY29u
ZmlnIGZ1bmN0aW9uCmJlY29tZXMgaW52YWxpZCBpZiBhc3NlcnRfZW9sIGNhbGxzIHVjaV9yZWFs
bG9jIGRvd24gdGhlIGxpbmUsCnJlc3VsdGluZyBpbiBhIHNlZ21lbnRhdGlvbiBmYXVsdCB3aGVu
IGF0dGVtcHRpbmcgdG8gZGVyZWZlcmVuY2UKbmFtZS4gQSBzaW1wbGUgZml4IGlzIHRvIGNhbGwg
YXNzZXJ0X2VvbCBiZWZvcmUgcmV0cmlldmluZyB0aGUKYWN0dWFsIGFkZHJlc3MgZm9yIHRoZSBu
YW1lIGFuZCB0eXBlIHBvaW50ZXJzLgoKVGhlIHNlZ21lbnRhdGlvbiBmYXVsdCBoYXMgYmVlbiBm
b3VuZCB3aGlsZSBmdXp6aW5nIHRoZQp1Y2kgY29uZmlndXJhdGlvbiBzeXN0ZW0gZm9yIHZhcmlv
dXMgdHlwZXMgb2YgZGlmZmVyZW50IGNyYXNoZXMKYW5kIHVuZGVmaW5lZCBiZWhhdmlvcnMsIHdo
aWNoIHJlc3VsdGVkIGluIG11bHRpcGxlIGRpZmZlcmVudAppbXBvcnQgZmlsZXMgY2F1c2luZyBp
bnN0YWJpbGl0eSBhbmQgc2VnbWVudGF0aW9uIGZhdWx0cy4KClNpZ25lZC1vZmYtYnk6IEx1a2Eg
S2/Fvm5qYWsgPGx1a2Eua296bmpha0BzYXJ0dXJhLmhyPgpTaWduZWQtb2ZmLWJ5OiBKdXJhaiBW
aWp0aXVrIDxqdXJhai52aWp0aXVrQHNhcnR1cmEuaHI+CkNDOiBMdWthIFBlcmtvdiA8bHVrYS5w
ZXJrb3ZAc2FydHVyYS5ocj4KLS0tCiBmaWxlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9maWxlLmMgYi9maWxlLmMK
aW5kZXggZjUwMzJiZC4uM2NkNzcwMiAxMDA2NDQKLS0tIGEvZmlsZS5jCisrKyBiL2ZpbGUuYwpA
QCAtNDI1LDkgKzQyNSw5IEBAIHN0YXRpYyB2b2lkIHVjaV9wYXJzZV9jb25maWcoc3RydWN0IHVj
aV9jb250ZXh0ICpjdHgpCiAJCXVjaV9wYXJzZV9lcnJvcihjdHgsICJpbnZhbGlkIGNoYXJhY3Rl
ciBpbiB0eXBlIGZpZWxkIik7CiAKIAlvZnNfbmFtZSA9IG5leHRfYXJnKGN0eCwgZmFsc2UsIHRy
dWUsIGZhbHNlKTsKKwlhc3NlcnRfZW9sKGN0eCk7CiAJdHlwZSA9IHBjdHhfc3RyKHBjdHgsIG9m
c190eXBlKTsKIAluYW1lID0gcGN0eF9zdHIocGN0eCwgb2ZzX25hbWUpOwotCWFzc2VydF9lb2wo
Y3R4KTsKIAogCWlmICghbmFtZSB8fCAhbmFtZVswXSkgewogCQljdHgtPmludGVybmFsID0gIXBj
dHgtPm1lcmdlOwotLSAKMi4yNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=

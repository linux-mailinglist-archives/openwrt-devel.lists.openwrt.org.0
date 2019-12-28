Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9EF12BF4D
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Dec 2019 22:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HOmNRss4BI1XnP0GxKsHEv/CQqwtuCzrVHwafeLznBY=; b=E4RPhDbJB2winX
	bSYUMvHhMogomV9S1FDHVFLj76gZiesGT0FUxyxqS0xGfTX14bIa7XLwNv0TageGhS2ygI7Ul/QuY
	b1DcDW8UBoBOFuDHd1Co1FdBI8atgPpQPKw88rr0mECrG2RQlVNM+iMApIOncKRcMNRUuw+KIoIMJ
	hMQ2fWdASkbiyTBpA46QxKx0JKetMxbK+Et4SxWpf+uegMj1Iifsjzdw9fhGAdibjPH/indHPU+CI
	LAxEfwROlgMxQcX6zy6HwAvcYWxXAvyB/dAvuftIJo6Z9fxYuM2rndG1DgTpzA/lLvnL6QuAuD1Mc
	EdtMrzbCOv/YbMaql6OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJJJ-0001lk-U5; Sat, 28 Dec 2019 21:07:45 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJJA-0001kW-6m
 for openwrt-devel@lists.openwrt.org; Sat, 28 Dec 2019 21:07:37 +0000
Received: by mail-lj1-x236.google.com with SMTP id j26so29885304ljc.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 28 Dec 2019 13:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrF7d5A3M3UO/vMVPZ+VXEMoTwY7IhBoDyE0uYY8jAg=;
 b=uTGn/EE8mRnaDXuZLls72MC69w61+JGKJ6h/b27oPkyEtNPDAXI1XJZAeaqj1B/bXy
 ++we0wC6wPGs6O/3ON3ppX+Bb+jHe3uCM155ELQzbMs8V2qK9AKv9O+GikTiewnfY2q2
 dQbwRxHxn8HN+grk52fSXUYS8PY4dr+4sXg3Qz+h1ARGadfsKmG96x1HCcthNgLIwxKt
 TkWXOsK3wKCTI+c0rRtSYXGXqJij6OUkj1orS91sncTWN3L9/Jg4UZx2kk8LLpz9r7YN
 Rob1eJ7ewFgcXnxObll2nw16dXf6tXn+MdNgLEAF0xGDTC0RPyMAbBtvUGUZaRVQi80Z
 BVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrF7d5A3M3UO/vMVPZ+VXEMoTwY7IhBoDyE0uYY8jAg=;
 b=e6WNEBN18tx66D2gmah9yRdABWN/+UyGNxPOVWwiBCub+hUt9jhiVLk9ZzSMFYFBdJ
 02B/KlVfy8XXl6mzc6oh04H/UTMJyOK4c77EB0IXQlCWKmSM1snxf+hVyQLtbVa7A44s
 UpHwsa2i+UvokAR4fzyk+uYmLu6ByhkAbOKoEQYvjl28bLGJayN9z7RqcS1wrAtAcbvy
 BZOkrB489aopH4jrUhUm0ng0eabcOIZLnJ7pWe8emNVlt38arvp/bKpD+FQHmVhKRU89
 dLQeqREu0JxOgHtnX+1hQoPfHzBaF2rNCBksjXM7zmTIYSoYNrzYZ/yq2TyZ1iN1dTO6
 k8nw==
X-Gm-Message-State: APjAAAXBFsjhjaGkhMpeIC4f9zSq9OcZPUNWPjdSrmM0nXKT9pnfk9BZ
 Ae4ZzcgWGFpqU6CBmz+gVixue9TM
X-Google-Smtp-Source: APXvYqyFEJL7hcHrs34Hr1vZOhLuv6T7x9/aaqzqVkuUN8aT56Gz3KTyjgJYOwQozcmLLf6UgGG2uA==
X-Received: by 2002:a2e:b0f5:: with SMTP id h21mr30167337ljl.9.1577567252246; 
 Sat, 28 Dec 2019 13:07:32 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id m189sm16641767lfd.92.2019.12.28.13.07.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 13:07:31 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Dec 2019 22:07:20 +0100
Message-Id: <20191228210722.1407-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_130736_459533_0B584F5E 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH fstools 0/2] block(d): remove remaining
 files if they exist
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSSBub3RpY2VkIHRoYXQg
cmVib290aW5nIHdpdGggZGV2aWNlcyBtb3VudGVkIGNhbiByZXN1bHQgaW46CjEpIExlYXZpbmcg
ZGlyZWN0b3JpZXMgaW4gL21udC8gd2hlbiBub3QgdXNpbmcgYXV0b2ZzCjIpIExlYXZpbmcgc3lt
bGlua3MgaW4gL21udC8gd2hlbiB1c2luZyBhdXRvZnMKClRoZXkgY2FuIGNhdXNlIG1vdW50aW5n
IGVycm9ycyBvbiBmdXJ0aGVyIGF0dGVtcHRzLgoKV2l0aCBtb3VudGQgdGhpcyBwcm9ibGVtIGRp
ZG4ndCBleGlzdCBkdWUgdG8gdXNpbmcgL3RtcC9tb3VudHMvIGluc3RlYWQKb2YgL21udC8uIFdp
dGggYmxvY2soZCkgd2UgaGF2ZSB0byBmaW5kIHNvbWUgc29sdXRpb24uCgpUaGlzIHBhdGNoZXMg
dGFrZXMgY2FyZSBvZiByZW1vdmluZyBmaWxlcyB0aGF0IGNhbiBjYXVzZSBtb3VudGluZyBvcgpz
eW1saW5rLWluZyBlcnJvcnMuIFdvcnRoIGltcGxlbWVudGluZyBtYXkgYmUgYWxzbyBhIC9tbnQv
IGNsZWFudXAgZG9uZQphdCBib290L2luaXQgdGltZS4KClJhZmHFgiBNacWCZWNraSAoMik6CiAg
YmxvY2s6IHJlbW92ZSBtb3VudCB0YXJnZXQgZmlsZSBpZiBpdCdzIGEgbGluawogIGJsb2NrZDog
cmVtb3ZlIHN5bWxpbmsgbGlua3BhdGggZmlsZSBpZiBpdCdzIGEgZGlyIG9yIGxpbmsKCiBibG9j
ay5jICB8IDMgKysrCiBibG9ja2QuYyB8IDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMCBp
bnNlcnRpb25zKCspCgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2CD17CE2A
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 13:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Twv6N1gzFgvBK0uxudS2hkMh3JPwuAjs1PSD7N+Q3bQ=; b=As2TkfO/fhkoop
	48NpOWyHCQMqoLj/RLxxRSGuMRc6UcZ6nFHxVVs2kDCmyfc+rbAbZaL0bKRHowRJ17AaiobcMxA4Z
	e6w2YVnv6y02Mfauf83fTNqigfNdlWnrZjSrorjZ+0dJ71pjBmE/ywZPdgtTkVQR2qapHoUJevBeW
	QiVM50ZTvqWQNilTSAIHDvSXYZgYnYOgilth+9bETCtIEHfurdFm8YlID9PSzQi5DXaUxclJg9Ty9
	AnqE3yySayPCY5mh3E6qGjTqoN63vt7x9LfwK5uT0PB1SB0HH/H6Wj7EQ53FyaS2CLDpcPnLC3MUf
	uyVxNGGd+d4sCK3E7KIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAYiP-0003hz-GO; Sat, 07 Mar 2020 12:38:01 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAYiI-0003hc-7r
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 12:37:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 94BFE32C8;
 Sat,  7 Mar 2020 13:37:50 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 433cb21d;
 Sat, 7 Mar 2020 13:37:37 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Mar 2020 13:37:44 +0100
Message-Id: <20200307123744.13026-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_043754_431492_0C623BD5 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH procd openwrt-19.07] instance: turn error
 into debug message for missing ujail binary
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2luY2UgY29tbWl0IDU1N2YxMWIzYTIwZiAoImluc3RhbmNlOiBwcm92aWRlIGVycm9yIGZlZWRi
YWNrIGlmIHVqYWlsCmJpbmFyeSBpcyBtaXNzaW5nIikgd29ycnlpbmcgbG9nIHNwYW0gb2YgdGhl
IGZvcm0gInVuYWJsZSB0byBmaW5kCi9zYmluL2phaWwgLi4uIiBtYXkgYmUgZW5jb3VudGVyZWQu
CgpUaGlzIGNvcnJlc3BvbmRzIHdpdGggdGhlIGNoYW5nZXMgZG9uZSBpbiB0aGUgdXBzdHJlYW0g
Y29tbWl0CmJjYjg2NTU0ZjFiNCAoImluc3RhbmNlOiBhZGQgJ3JlcXVpcmVqYWlsJyBhdHRyaWJ1
dGUiKS4KCkZpeGVzOiA1NTdmMTFiM2EyMGYgKCJpbnN0YW5jZTogcHJvdmlkZSBlcnJvciBmZWVk
YmFjayBpZiB1amFpbCBiaW5hcnkgaXMgbWlzc2luZyIpClJlZjogaHR0cHM6Ly9mb3J1bS5vcGVu
d3J0Lm9yZy90L29wZW53cnQtMTktMDctMi1zZXJ2aWNlLXJlbGVhc2UvNTcwNjYKU2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBzZXJ2aWNlL2luc3RhbmNl
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9zZXJ2aWNlL2luc3RhbmNlLmMgYi9zZXJ2aWNlL2luc3RhbmNlLmMKaW5k
ZXggZTU2MTVkNWMyZjAyLi4zNWQzOThjMzYwYjYgMTAwNjQ0Ci0tLSBhL3NlcnZpY2UvaW5zdGFu
Y2UuYworKysgYi9zZXJ2aWNlL2luc3RhbmNlLmMKQEAgLTgwMCw3ICs4MDAsNyBAQCBpbnN0YW5j
ZV9qYWlsX3BhcnNlKHN0cnVjdCBzZXJ2aWNlX2luc3RhbmNlICppbiwgc3RydWN0IGJsb2JfYXR0
ciAqYXR0cikKIAogCXIgPSBzdGF0KFVKQUlMX0JJTl9QQVRILCAmcyk7CiAJaWYgKHIgPCAwKSB7
Ci0JCUVSUk9SKCJ1bmFibGUgdG8gZmluZCAlczogJW0gKCVkKVxuIiwgVUpBSUxfQklOX1BBVEgs
IHIpOworCQlERUJVRygyLCAidW5hYmxlIHRvIGZpbmQgJXM6ICVtICglZClcbiIsIFVKQUlMX0JJ
Tl9QQVRILCByKTsKIAkJcmV0dXJuIDA7CiAJfQogCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C512256F
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 08:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2rhrxP3XTckclcJ7o++r1wfXUoZ9N/n6koteAKFGak=; b=E+aZZBRoijH5G5
	+wh+kkFVlNEk1ibCY04bPomFrW2AY/kvzcP/tgvki0Us53NgvOzatR0TzmiCj+fbpAiT4QY0qUGFc
	qJ7anqmmPEjaPzNo5WcGkatr+YlTLn+r8/VNMHrWG1nJ5suBi9sKQnMvneWBaWOWVj4R068Pb/3mh
	KDeuvlvo9jTB5O/Wgnq32ZbkF6yxA62HlCJCYHkS8hFSbOCQQxR1Az5Uk4obIYJUKHSFyHyvk9Wka
	2KufOPEl2TOrOx6mb7RjHad6JEnJK/iMskX34EVa7N7cGhnVpI/Dbgq2DaRkwVhPmObXKVy+/c2vZ
	zDz/ygSBcb2C2mMzftVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7IU-0005Oc-JA; Tue, 17 Dec 2019 07:29:34 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Hm-0004jk-OE
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 07:28:52 +0000
Received: by mail-lf1-x143.google.com with SMTP id n12so6209578lfe.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 23:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s6UTxPZ8faurrw7G9Cysa8S0Je6nqr0dtOuG1TkHlnc=;
 b=q4/8HaCw/OHWFOiBwaoUWvzUMiV98ubt0kRtZ5s+vPjd6NDJcZ4ILKciNCfobFy7P0
 sscdHR2K4K4gJZIscOCev3Q/Ok4Q/VHBPGcWF2rJe/3IIpjjITTITOXf4LngyS+og+iz
 +at8McpbWwCB1l0hXS64vWRNCMOdYDPR7jR/z0KPHvIb0746zaYg3OW3TCeP8Nq558cn
 V0VRb/4ORRn08kjd8VKMf/zzeUuKf0Ljo0QNVz7E/92x7Jbs1J3UF8E3gZR+z8mT/GKr
 9ZF23ZsFoIseqgm761ClaOKnzK15X2j3eqMy367ay+5qKAt9mUvxxoCioO8l7LyUQPST
 h+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6UTxPZ8faurrw7G9Cysa8S0Je6nqr0dtOuG1TkHlnc=;
 b=M9b2UaqfYtBUD8Q+XTowS4VS8uMHbuypNmiMB6yl4z5ngfNslDSJXmCVyfDOhly0Hp
 36cu2LEZudq3m4y2D8V6bqcEeKMuS0W6g6aM5IyNH5UXMP1ZpF76KfuSm7dcQS3dvE64
 db+5qfj58bHz9HUDBav7QKOu9khw+6RNrPpD0zyNQBc+0Xn23Z0PcrCJx7f+xyOhgNm0
 omLyb6u3AVZj6GjVOZJo3WwTYXRuwjpMQmzGRVNbTpZiamIinROdhmI2ExpTC3Amq7mU
 dv1wq40N07mYU+frUKhi/iig4tZZUhCNVXc7OpAuejGlc6Xjq1WHCUC30EHSZ/3BePwh
 +fvA==
X-Gm-Message-State: APjAAAVd3bEG0/vPe7AbPMBt6cxLyDmBxU7ZtO6LG1DmTiINwGj6AGQp
 Y+1AIuzKYLvYLY88eB7Pr+2x2TOR
X-Google-Smtp-Source: APXvYqwk2VDwtXjEK5gMD7sgwzNhsQVu4m7JRTnK0kbIjEE2ltv9PXfV5SCAekMiYvN7IA/c8l/vKg==
X-Received: by 2002:ac2:4adc:: with SMTP id m28mr1833123lfp.26.1576567728970; 
 Mon, 16 Dec 2019 23:28:48 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm11919221ljd.88.2019.12.16.23.28.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 23:28:48 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 08:28:36 +0100
Message-Id: <20191217072836.11411-4-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191217072836.11411-1-zajec5@gmail.com>
References: <20191217072836.11411-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232850_793434_18A9DBD6 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools 3/3] libblkid: vfat: Change parsing
 label in special cases
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
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali.rohar@gmail.com>,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21haWwuY29tPgoKY29tbWl0IGYwY2E3ZTgw
ZDdhMTcxNzAxZDBkMDRhM2VhZTIyZDk3ZjE1ZDA2ODMgdXBzdHJlYW0uCgoqIFVzZSBvbmx5IGxh
YmVsIGZyb20gdGhlIHJvb3QgZGlyZWN0b3J5IGFuZCBkbyBub3QgZmFsbGJhY2sgdG8gdGhlIGxh
YmVsCiAgc3RvcmVkIGluIGJvb3Qgc2VjdG9yLiBUaGlzIGlzIGhvdyBNUy1ET1MgNi4yMiwgTVMt
RE9TIDcuMTAsIFdpbmRvd3MgOTgsCiAgV2luZG93cyBYUCBhbmQgYWxzbyBXaW5kb3dzIDEwIGJl
aGF2ZS4gTW9yZW92ZXIgV2luZG93cyBYUCBhbmQgV2luZG93cyAxMAogIGRvIG5vdCB0b3VjaCBs
YWJlbCBpbiBib290IHNlY3RvciBhbnltb3JlLCBzbyByZW1vdmluZyBGQVQgbGFiZWwgb24gdGhv
c2UKICBXaW5kb3dzZXMgbGVhZHMgdG8gaGF2aW5nIG9sZCBsYWJlbCBzdGlsbCBzdG9yZWQgaW4g
Ym9vdCBzZWN0b3IgKHdoaWNoCiAgTVMtRE9TIGFuZCBXaW5kb3dzIGZ1bGx5IGlnbm9yZSkuCgoq
IExhYmVsIGVudHJ5ICJOTyBOQU1FIiBpbiByb290IGRpcmVjdG9yeSBpcyB0cmVhdGVkIGFzIGxh
YmVsICJOTyBOQU1FIgogIGluc3RlYWQgb2YgZW1wdHkgbGFiZWwuIEluIHJvb3QgZGlyZWN0b3J5
IGl0IGhhcyBubyBzcGVjaWFsIG1lYW5pbmcuCiAgU3RyaW5nICJOTyBOQU1FIiBoYXMgYSBzcGVj
aWFsIG1lYW5pbmcgKGVtcHR5IGxhYmVsKSBvbmx5IGZvciBsYWJlbAogIHN0b3JlZCBpbiBib290
IHNlY3Rvci4KCiogTGFiZWwgZnJvbSB0aGUgYm9vdCBzZWN0b3IgaXMgbm93IHN0b3JlZCBpbnRv
IExBQkVMX0ZBVEJPT1QgZmllbGQuIFNvIGlmCiAgdGhlcmUgYXJlIGFwcGxpY2F0aW9ucyB3aGlj
aCBkZXBlbmRzIG9yIG5lZWRzIHRvIHJlYWQgdGhpcyBsYWJlbCwgdGhleQogIGhhdmUgYWJpbGl0
eS4KCkFmdGVyIHRoaXMgY2hhbmdlIExBQkVMIGFsd2F5cyBjb3JyZXNwb25kZW50IHRvIHRoZSBs
YWJlbCBmcm9tIHRoZSByb290CmRpcmVjdG9yeSBhbmQgTEFCRUxfRkFUQk9PVCB0byB0aGUgbGFi
ZWwgc3RvcmVkIGluIHRoZSBib290IHNlY3Rvci4gSWYgc29tZQpvZiB0aG9zZSBsYWJlbHMgaXMg
bWlzc2luZyBvciBpcyBub3QgcHJlc2VudCAoZS5nLiAiTk8gTEFCRUwiIGluIGJvb3QKc2VjdG9y
KSB0aGVuIHBhcnRpY3VsYXIgZmllbGQgaXMgbm90IHNldC4KClNpZ25lZC1vZmYtYnk6IFBhbGkg
Um9ow6FyIDxwYWxpLnJvaGFyQGdtYWlsLmNvbT4KW3JtaWxlY2tpOiBkcm9wIHVubmVlZGVkIG5v
dyBkb3duc3RyZWFtIGhhY2tzIGZvciBoYW5kbGluZyBzcGFjZXNdClNpZ25lZC1vZmYtYnk6IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBsaWJibGtpZC10aW55L3ZmYXQu
YyB8IDE3ICsrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9saWJibGtpZC10aW55L3ZmYXQuYyBiL2xp
YmJsa2lkLXRpbnkvdmZhdC5jCmluZGV4IDkzZTQwNTMuLmU3MGRkNzUgMTAwNjQ0Ci0tLSBhL2xp
YmJsa2lkLXRpbnkvdmZhdC5jCisrKyBiL2xpYmJsa2lkLXRpbnkvdmZhdC5jCkBAIC0zMDUsMTEg
KzMwNSwxMSBAQCBzdGF0aWMgaW50IHByb2JlX3ZmYXQoYmxraWRfcHJvYmUgcHIsIGNvbnN0IHN0
cnVjdCBibGtpZF9pZG1hZyAqbWFnKQogCXN0cnVjdCB2ZmF0X3N1cGVyX2Jsb2NrICp2czsKIAlz
dHJ1Y3QgbXNkb3Nfc3VwZXJfYmxvY2sgKm1zOwogCXVuc2lnbmVkIGNoYXIgKnZvbF9sYWJlbCA9
IDA7CisJY29uc3QgdW5zaWduZWQgY2hhciAqYm9vdF9sYWJlbCA9IE5VTEw7CiAJdW5zaWduZWQg
Y2hhciAqdm9sX3Nlcm5vID0gTlVMTCwgdm9sX2xhYmVsX2J1ZlsxMl0gPSB7IDAgfTsKIAl1aW50
MTZfdCBzZWN0b3Jfc2l6ZSA9IDAsIHJlc2VydmVkOwogCXVpbnQzMl90IGNsdXN0ZXJfY291bnQs
IGZhdF9zaXplOwogCWNvbnN0IGNoYXIgKnZlcnNpb24gPSBOVUxMOwotCWludCBpOwogCiAJbXMg
PSBibGtpZF9wcm9iZV9nZXRfc2IocHIsIG1hZywgc3RydWN0IG1zZG9zX3N1cGVyX2Jsb2NrKTsK
IAlpZiAoIW1zKQpAQCAtMzM2LDggKzMzNiw3IEBAIHN0YXRpYyBpbnQgcHJvYmVfdmZhdChibGtp
ZF9wcm9iZSBwciwgY29uc3Qgc3RydWN0IGJsa2lkX2lkbWFnICptYWcpCiAJCQl2b2xfbGFiZWwg
PSB2b2xfbGFiZWxfYnVmOwogCQl9CiAKLQkJaWYgKCF2b2xfbGFiZWwgfHwgIW1lbWNtcCh2b2xf
bGFiZWwsIG5vX25hbWUsIDExKSkKLQkJCXZvbF9sYWJlbCA9IG1zLT5tc19sYWJlbDsKKwkJYm9v
dF9sYWJlbCA9IG1zLT5tc19sYWJlbDsKIAkJdm9sX3Nlcm5vID0gbXMtPm1zX3Nlcm5vOwogCiAJ
CWJsa2lkX3Byb2JlX3NldF92YWx1ZShwciwgIlNFQ19UWVBFIiwgKHVuc2lnbmVkIGNoYXIgKikg
Im1zZG9zIiwKQEAgLTM5MSw4ICszOTAsNyBAQCBzdGF0aWMgaW50IHByb2JlX3ZmYXQoYmxraWRf
cHJvYmUgcHIsIGNvbnN0IHN0cnVjdCBibGtpZF9pZG1hZyAqbWFnKQogCiAJCXZlcnNpb24gPSAi
RkFUMzIiOwogCi0JCWlmICghdm9sX2xhYmVsIHx8ICFtZW1jbXAodm9sX2xhYmVsLCBub19uYW1l
LCAxMSkpCi0JCQl2b2xfbGFiZWwgPSB2cy0+dnNfbGFiZWw7CisJCWJvb3RfbGFiZWwgPSB2cy0+
dnNfbGFiZWw7CiAJCXZvbF9zZXJubyA9IHZzLT52c19zZXJubzsKIAogCQkvKgpAQCAtNDIxLDEz
ICs0MTksMTAgQEAgc3RhdGljIGludCBwcm9iZV92ZmF0KGJsa2lkX3Byb2JlIHByLCBjb25zdCBz
dHJ1Y3QgYmxraWRfaWRtYWcgKm1hZykKIAkJfQogCX0KIAotCWZvciAoaSA9IDEwOyBpID49IDA7
IGktLSkgewotCQlpZiAodm9sX2xhYmVsW2ldICE9ICcgJykKLQkJCWJyZWFrOwotCQl2b2xfbGFi
ZWxbaV0gPSAnXDAnOwotCX0KKwlpZiAoYm9vdF9sYWJlbCAmJiBtZW1jbXAoYm9vdF9sYWJlbCwg
bm9fbmFtZSwgMTEpKQorCQlibGtpZF9wcm9iZV9zZXRfaWRfbGFiZWwocHIsICJMQUJFTF9GQVRC
T09UIiwgKHVuc2lnbmVkIGNoYXIgKikgYm9vdF9sYWJlbCwgMTEpOwogCi0JaWYgKHZvbF9sYWJl
bCAmJiBtZW1jbXAodm9sX2xhYmVsLCBub19uYW1lLCAxMSkpCisJaWYgKHZvbF9sYWJlbCkKIAkJ
YmxraWRfcHJvYmVfc2V0X2xhYmVsKHByLCAodW5zaWduZWQgY2hhciAqKSB2b2xfbGFiZWwsIDEx
KTsKIAogCS8qIFdlIGNhbid0IGp1c3QgcHJpbnQgdGhlbSBhcyAlMDRYLCBiZWNhdXNlIHRoZXkg
YXJlIHVuYWxpZ25lZCAqLwotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C932F18898D
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 16:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3UQ6buIpRRkHzPDoyONCO6/xTDNEIvkL3qvKibsmazY=; b=Z1Uca4dYegf3Nn
	cln4aGAadEATDi9RQ9PrF0shph8kcZAd1j1BvKhFLkIy7iwvXyoknMyfbEk8hJCxt6J38r7YdrV86
	Qzfak7DztLCao2upclnOIOVwUYcdg/0APmD8KrQp05Pw1XAUg5FlovBHayjZo91pLV1pepUf552Wf
	S4J6TGWQ/IHlrndXdCFe4q4eTWO8vhF/dMTEiO/eHyti12Y1mg+EFybiWzP8MRzBSQLw3VL0RiM9t
	SbAxRTJ63FJbtqOnegUigdtBLAL8hC8k2RdykhCsJHuJCZ844kUCQ2R8Ci80hQVWeFQdf6HVpgsAB
	W3Hrqo42iPHDdVJ9ET7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEEZl-000406-Hv; Tue, 17 Mar 2020 15:56:17 +0000
Received: from mail.sgstbr.de ([2a01:4f8:160:14d5:e20b::21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEEZe-0003ze-FQ
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 15:56:11 +0000
Received: from fbl-desktop.lan (unknown
 [IPv6:2a02:810d:98c0:4a00:ded:4285:9dd1:fe35])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: fabian@blaese.de)
 by mail.sgstbr.de (Postfix) with ESMTPSA id 9F76A2C6164;
 Tue, 17 Mar 2020 16:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blaese.de; s=201803;
 t=1584460569; bh=owNuPkiFa4cKZM7LUpPj/rZhfYlnNnFm5OeLEIBxiBs=;
 h=From:To:Subject:Date:From;
 b=DeKl3x+4yNQJiQVqbZpt8U+a+8gGUAkFmP3Cpukr/DhNkEq3ZxLeSCuwxD4Zv/1dP
 x/5ibBfewaFYvrhZRbjq+oaPmM4FhgN/y/0Vc/9pxiuFn+i5LmB5aVypiEO9lB+5Q/
 N27IqIK0prxJQFK14g6sKlhPQK+zF91akkQRRWT2qaVV5FUHEiQKFqXSH2ZNmiDPsd
 BJGr9sOodeBvybWE/gg5YxEs1f7bCr55VsTRXKhuQ4TRtk/fAVF5aesj0BkGnBhIiS
 6szz8YCvqTFOPvHabzZvCZfZWJvhfw8XZ8vKP7WoB5tEXoZCkWCg0ixWoHzrqdGRRH
 fQlNB33t0ktRA==
From: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Mar 2020 16:55:57 +0100
Message-Id: <20200317155557.754836-1-fabian@blaese.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_085610_674586_9BB56F04 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH rpcd] session: deny access if password login
 is disabled
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
Cc: =?UTF-8?q?Fabian=20Bl=C3=A4se?= <fabian@blaese.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIHNwZWNpYWwgY2hhcmFjdGVycyAnIScgYW5kICcqJyBpbiAvZXRjL3NoYWRvdyBhcmUKdXNl
ZCB0byBkaXNhYmxlIHBhc3N3b3JkIGxvZ2luIGZvciBhIHNwZWNpZmljIGFjY291bnQuCgpUaGUg
Y2hhcmFjdGVyICd4JyBoYXMgbm8gc3BlY2lhbCBtZWFuaW5nLCBidXQgc2hvdWxkIG5vdApiZSBp
bnRlcnByZXRlZCBhcyBhbiBlbXB0eSBwYXNzd29yZC4KCkhvd2V2ZXIsIHJwY2QgZGlkIHRyZWF0
IHRoZXNlIHNwZWNpYWwgY2hhcmFjdGVycyBsaWtlIG5vCnBhc3N3b3JkIHdhcyBzZXQsIHdoaWNo
IGFsbG93cyBhY2Nlc3MgZXZlbiB0aG91Z2ggdGhlIGFjY291bnQKaXMgZGlzYWJsZWQuCgpCeSBy
ZW1vdmluZyB0aGUgYWRkaXRpb25hbCBjaGVja3MgZm9yIHRoZXNlIGNoYXJhY3RlcnMsIHRoZQpl
bmNyeXB0ZWQgcGFzc3dvcmQgc3RyaW5nIGlzIHBhc3NlZCB0byBjcnlwdCwgd2hpY2ggcmV0dXJu
cyBOVUxMCmlmIHRoZSBzYWx0IGhhcyBhbiBpbnZhbGlkIGZvcm1hdCBhbmQgdGhlcmVmb3JlIGFj
Y2VzcyBpcyBkZW5pZWQuCgpGaXhlczogRlMjMjYzNAoKU2lnbmVkLW9mZi1ieTogRmFiaWFuIEJs
w6RzZSA8ZmFiaWFuQGJsYWVzZS5kZT4KLS0tCnJlc2VuZDogYWRkIG1pc3NpbmcgcnBjZCB0byBz
dWJqZWN0Ci0tLQogc2Vzc2lvbi5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc2Vzc2lvbi5jIGIvc2Vzc2lvbi5jCmlu
ZGV4IDEzYTJlZjMuLjkwOGUyOTggMTAwNjQ0Ci0tLSBhL3Nlc3Npb24uYworKysgYi9zZXNzaW9u
LmMKQEAgLTc5NSw3ICs3OTUsNyBAQCBycGNfbG9naW5fdGVzdF9wYXNzd29yZChjb25zdCBjaGFy
ICpoYXNoLCBjb25zdCBjaGFyICpwYXNzd29yZCkKIAljaGFyICpjcnlwdF9oYXNoOwogCiAJLyog
cGFzc3dvcmQgaXMgbm90IHNldCAqLwotCWlmICghaGFzaCB8fCAhKmhhc2ggfHwgIXN0cmNtcCho
YXNoLCAiISIpIHx8ICFzdHJjbXAoaGFzaCwgIngiKSkKKwlpZiAoIWhhc2ggfHwgISpoYXNoKQog
CXsKIAkJcmV0dXJuIHRydWU7CiAJfQotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

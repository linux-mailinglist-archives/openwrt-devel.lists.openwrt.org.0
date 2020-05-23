Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906F11DF6D0
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 13:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rBFpZxeAIYfATSdbMsDI0/qss/TBoeZNbAXHmYh17Ls=; b=B9vdWmVecmvJou
	1Zc9+Pfj8GBH4n6sTqvy+O+HVPnsyatnf6k7Ha5Rq8xbF+hkqa16y/k1wNUDXczL8V2ONuG6HgRTg
	gT7XWkRgOc3xzQ2Epk1Et6ljPx2xfCot3UVjF0DLg1/Ruo8dm0P4E9lbhqk5PXTxj8GdeDAGKiETq
	c20qsXoyjKJaAtdK0f3qJZ10KEpU2IJz9pUEG2SeAWL7IEy+1zfAB+qBx7+NhuIiFn1qM6uNjsxQy
	Hh3sbOfsD+D2H+/jTfznlkNlEanMJCxH09fTGJqMGLaAooa1aYFVNIK8TJbkDKujFxJqKtUq7d5HK
	2nOMW+qy9VdWOpf1WCjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcSBW-0003RI-GY; Sat, 23 May 2020 11:19:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcSBN-0003Qv-PW
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 11:19:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id c21so7995529lfb.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 May 2020 04:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oA1c9LWxigV60Hr0SviS9nlqon2PZ/+7tsEh1BKDpQ0=;
 b=bHQmtSPtBdj/xDxI9XWTCfNOgZzgU9/MACxV5d2cN6ICQf0H0ML3s5zd6vkOpDM9gr
 jILoUa+FJbmTtXdPDUsQkUrKJVYBiWlPVLFuEGfquMb/i1HHWkkoZWljfGlkcjKPMTyZ
 U4/CQ907EKjCTqFUC+ndVQNyx27L1DUOG6mH3nTNDVCWEvERjmXGekmbTqFdmlU24tA8
 E/rx+ZeubbxGbFJpy8x7mBzxoS6l8zAg6ObiEkhOqoHtoBppfNGqOsmYQA332Mynl28l
 FmPLN8TCq2amg2KWAsWq/9dQgX8B54FQbjDUmIhpSleya/T5giach3IeXoYTj1HGow5b
 5THA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oA1c9LWxigV60Hr0SviS9nlqon2PZ/+7tsEh1BKDpQ0=;
 b=UormkkCeuTAcv/P47khZ1GIj8UePhBuB2bMJuTPtw6yE3QryglZnFWfYIxjbY7euRt
 +2KE4cSXHR5VHmF5WRCMzghR6EKazAqwTWsaEWv6DDWyu7ek1tecSTKSHe/UAL4itHlB
 ge8l92YxTi1XTlB69PFPNBoWxAHwzvoNGwOxIj/ZhgALjiyuspTw6aVA4ZxcDMDwmTY7
 RZbNa10/Zh9ZdSry9UgBiBuL+4+67B9dkL+tQm88OAr6LBYU0u0aBpHdqgP7iSjiDNz+
 vm7lG+0fRMK5mDv1OgGS6pCbMO/Ztg5rSoIgGblDavUPHMHTLsCXCU6Ba8YYErmrn4Jj
 doLQ==
X-Gm-Message-State: AOAM532xXYcTDgLbtpLi5pgRAryyIaRZqWUuY0mcJWMXuSo9jTVdleeC
 M9usnEbPNCz5Uc2KH3heFxBT9feM
X-Google-Smtp-Source: ABdhPJz07uOXLaXQuG3nE1KQEekQnYnXkuN0kdg1sGH561PFKpShkjMu6DekQlIWniWWCeklJRw6vw==
X-Received: by 2002:a05:6512:1051:: with SMTP id
 c17mr9745922lfb.206.1590232749409; 
 Sat, 23 May 2020 04:19:09 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id r19sm2888283ljp.68.2020.05.23.04.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 04:19:08 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 13:18:51 +0200
Message-Id: <20200523111851.28438-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_041913_850544_A6C0DE77 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH libubox] blobmsg: fix attrs iteration in the
 blobmsg_check_array_len()
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
 Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKU3RhcnRpbmcgd2l0aCA3
NWUzMDBhZWVjMjUgKCJibG9ibXNnOiBmaXggd3JvbmcgcGF5bG9hZCBsZW4gcGFzc2VkIGZyb20K
YmxvYm1zZ19jaGVja19hcnJheSIpIGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKCkgZ2V0cyAqYmxv
YiogbGVuZ3RoCnBhc3NlZCBhcyBhcmd1bWVudC4gSXQgY2Fubm90IGJlIHVzZWQgd2l0aCBfX2Js
b2Jtc2dfZm9yX2VhY2hfYXR0cigpCndoaWNoIGV4cGVjdHMgKmRhdGEqIGxlbmd0aC4KClVzZSBi
bG9ibXNnX2Zvcl9lYWNoX2F0dHIoKSB3aGljaCBjYWxjdWxhdGVzICpkYXRhKiBsZW5ndGggb24g
aXRzIG93bi4KClRoZSBzYW1lIGJ1ZyB3YXMgYWxyZWFkeSByZXBvcnRlZCBpbiB0aGUgcGFzdCBh
bmQgdGhlcmUgd2FzIGZpeCBhdHRlbXB0CmluIHRoZSBjb21taXQgY2Q3NTEzNmIxMzQyICgiYmxv
Ym1zZzogZml4IHdyb25nIHBheWxvYWQgbGVuIHBhc3NlZCBmcm9tCmJsb2Jtc2dfY2hlY2tfYXJy
YXkiKS4gVGhhdCBjaGFuZ2UgbWFkZSBibG9ibXNnX2NoZWNrX2F0dHJfbGVuKCkgY2FsbHMKZmFp
bCBob3dldmVyLgoKVGhpcyBpcyBob3BlZnVsbHkgdGhlIGNvcnJlY3QgJiBjb21wbGV0ZSBmaXg6
CjEuIGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKCkgZ2V0cyAqYmxvYiogbGVuZ3RoCjIuIEl0IGNh
bGxzIGJsb2Jtc2dfY2hlY2tfYXR0cl9sZW4oKSB3aGljaCByZXF1aXJlcyAqYmxvYiogbGVuZ3Ro
CjMuIEl0IHVzZXMgYmxvYm1zZ19mb3JfZWFjaF9hdHRyKCkgd2hpY2ggZ2V0cyAqZGF0YSogbGVu
Z3RoCgpUaGlzIGZpeGVzIGl0ZXJhdGluZyBvdmVyIHJhbmRvbSBtZW1vcnkgdHJlYXRlZCBhcyBh
dHRycy4gVGhhdCB3YXMKcmVzdWx0aW5nIGluIGNoZWNrIGZhaWxpbmcgcmFuZG9tbHkgZm9yIHRv
dGFsbHkgY29ycmVjdCBibG9icy4gSXQncwpjcml0aWNhbCBlLmcuIGZvciBwcm9jZCBwcm9qZWN0
IHdpdGggaXRzIGluc3RhbmNlX2ZpbGxfYXJyYXkoKSBmYWlsaW5nCmFuZCBwcm9jZCBub3Qgc3Rh
cnRpbmcgc2VydmljZXMuCgpGaXhlczogNzVlMzAwYWVlYzI1ICgiYmxvYm1zZzogZml4IHdyb25n
IHBheWxvYWQgbGVuIHBhc3NlZCBmcm9tIGJsb2Jtc2dfY2hlY2tfYXJyYXkiKQpTaWduZWQtb2Zm
LWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogYmxvYm1zZy5jIHwg
MTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9ibG9ibXNnLmMgYi9ibG9ibXNnLmMKaW5kZXggOGI5ODc3ZC4u
NTkwNDVlMSAxMDA2NDQKLS0tIGEvYmxvYm1zZy5jCisrKyBiL2Jsb2Jtc2cuYwpAQCAtMTE3LDE2
ICsxMTcsMTggQEAgaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXkoY29uc3Qgc3RydWN0IGJsb2JfYXR0
ciAqYXR0ciwgaW50IHR5cGUpCiAJcmV0dXJuIGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKGF0dHIs
IHR5cGUsIGJsb2JfbGVuKGF0dHIpKTsKIH0KIAotaW50IGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVu
KGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGludCB0eXBlLCBzaXplX3QgbGVuKQoraW50
IGJsb2Jtc2dfY2hlY2tfYXJyYXlfbGVuKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGlu
dCB0eXBlLAorCQkJICAgIHNpemVfdCBibG9iX2xlbikKIHsKIAlzdHJ1Y3QgYmxvYl9hdHRyICpj
dXI7CisJc2l6ZV90IHJlbTsKIAlib29sIG5hbWU7CiAJaW50IHNpemUgPSAwOwogCiAJaWYgKHR5
cGUgPiBCTE9CTVNHX1RZUEVfTEFTVCkKIAkJcmV0dXJuIC0xOwogCi0JaWYgKCFibG9ibXNnX2No
ZWNrX2F0dHJfbGVuKGF0dHIsIGZhbHNlLCBsZW4pKQorCWlmICghYmxvYm1zZ19jaGVja19hdHRy
X2xlbihhdHRyLCBmYWxzZSwgYmxvYl9sZW4pKQogCQlyZXR1cm4gLTE7CiAKIAlzd2l0Y2ggKGJs
b2Jtc2dfdHlwZShhdHRyKSkgewpAQCAtMTQwLDExICsxNDIsMTEgQEAgaW50IGJsb2Jtc2dfY2hl
Y2tfYXJyYXlfbGVuKGNvbnN0IHN0cnVjdCBibG9iX2F0dHIgKmF0dHIsIGludCB0eXBlLCBzaXpl
X3QgbGVuKQogCQlyZXR1cm4gLTE7CiAJfQogCi0JX19ibG9ibXNnX2Zvcl9lYWNoX2F0dHIoY3Vy
LCBhdHRyLCBsZW4pIHsKKwlibG9ibXNnX2Zvcl9lYWNoX2F0dHIoY3VyLCBhdHRyLCByZW0pIHsK
IAkJaWYgKHR5cGUgIT0gQkxPQk1TR19UWVBFX1VOU1BFQyAmJiBibG9ibXNnX3R5cGUoY3VyKSAh
PSB0eXBlKQogCQkJcmV0dXJuIC0xOwogCi0JCWlmICghYmxvYm1zZ19jaGVja19hdHRyX2xlbihj
dXIsIG5hbWUsIGxlbikpCisJCWlmICghYmxvYm1zZ19jaGVja19hdHRyX2xlbihjdXIsIG5hbWUs
IHJlbSkpCiAJCQlyZXR1cm4gLTE7CiAKIAkJc2l6ZSsrOwotLSAKMi4yNi4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

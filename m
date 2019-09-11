Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47718AF80F
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 10:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Iv4W1X1RbQe/7GjoE1i35heSVsltziGI0ZXrELNeLYw=; b=Ci7NukyrJ8WlHm
	UHsRwcI1Dtfkt/cG8EBIuZeg8DHt2VA6Uy/+PNgFgcncZM0im0SnwSwWu4R4a69WoHru1ziewfD8G
	k3EcwKSTvyeZqjLs4Oe7vzMibkWhmIksuuoV1zcqrk30EeU8vWfe3Jtlvdx82K90AVXDipcRxsH/j
	P0YVhAFAWDNWdEO8iGsvcc+lInSN0XfSexV8Kz0BWAAOVnJUymeP75mMZ9xL+50pbh5xSPb4rKlDw
	x4rZep7EEG1K7sPu9NJK/We3Zh9ncZapPT02jy/LAFy0xiezsEa/8qkx/vmdhmrZ77A4BDXaX+X6m
	VtLzMOYCP5TKa09EFjKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7y6P-0001gs-NT; Wed, 11 Sep 2019 08:35:50 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7y5Y-0001gS-Qa
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 08:34:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id j4so15740531lfh.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 01:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhiftXuJjWs0l1E0ubx9MiucagT0AwfGpNkGgWYT5cI=;
 b=pQ3NgYA6Aql1u5IaFEYjWPOCPUVb4FnG2BV7rXbeajIOVvxgV+5wto0oiJBx7GBP6x
 /cA1jFbjvtgldYIzhRpCMyKAp552Kp7+PhgtztKFon+DmVUvJQePe61ukfPRhaQXxNSD
 M+dfzUMyljWHY6uCpp2XONyxYYOz+Ik6oSryYxKM7BTIJTDAvFwpfnyLssWN1kjqWWnd
 Qf2anf56Qa1d1cMIFxkpa68QzDn2IflBfDTORCEC1/9RqG4etGXGYaptHrATCMCPB+G2
 8GsSto3cJnFccfguJAArlPUgZZYepsOupfAS/k5g446sAbRUI4A1EzoeXrDBnrmiLLj3
 KYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OhiftXuJjWs0l1E0ubx9MiucagT0AwfGpNkGgWYT5cI=;
 b=TdxHDcuowsP3gEIxqVDG6vNSDJNIuZ3YMSRvZ748UFNosa3bEOcZlJ89sA3qKCrR8v
 b5Qt0hqmt6wf/HGganD7NSSYZSiBtJ7mRsbgp1xQK2vIGEwpX7TesjBFjung+0ZSfZSh
 UJFyD//SPJHEIhNI6cY8IAW511StvlbNFEP73bHTfUoUsQxq6Y6NiTyeNJ4Yq7vl3OO5
 8VYcrEmhQ8lqMCXJTy0d6opYv3Awy3e1/Cd4xpW8cYhVLXG9hgNS2fGltWKTrb9prxp+
 CBjWhCPcxmaUcpz0SHgxJ+Bw8efm4Mf+imuzIUPdOuv1/86v7wB3uoN91/+aJz4SPTJn
 SQ6A==
X-Gm-Message-State: APjAAAU1A/RSIES1y6hc4bijszlss/Oop2HdVTAloENXjCb87L15Swkj
 N+EjtbQb5cSbiCVgxnt41O5idlBx
X-Google-Smtp-Source: APXvYqx+c9gO3Whb5r9XkYzqz93sWGknPP/ReuLAD0GFUFbUMmoup1VvC9sdBsUN/mxqTAq2QJkdeA==
X-Received: by 2002:ac2:4d04:: with SMTP id r4mr22963688lfi.57.1568190893224; 
 Wed, 11 Sep 2019 01:34:53 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id w27sm4497413ljd.55.2019.09.11.01.34.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 01:34:52 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Sep 2019 10:34:41 +0200
Message-Id: <20190911083441.19892-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_013456_885115_A750ECA0 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH procd] system: refuse sysupgrade with backup
 if it's unsupported
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKRG9uJ3QgYWxsb3cgaXQg
aWYgdmFsaWRhdGlvbiBtZXRob2RzIG1hcmtlZCBmaXJtd2FyZSBhcyBub3Qgc3VwcG9ydGluZyBh
CmJhY2t1cC4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5w
bD4KLS0tCiBzeXN0ZW0uYyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9zeXN0ZW0uYyBiL3N5c3RlbS5jCmlu
ZGV4IDk4ZmNiNjYuLjJhNWQ1YmMgMTAwNjQ0Ci0tLSBhL3N5c3RlbS5jCisrKyBiL3N5c3RlbS5j
CkBAIC01MTUsMTUgKzUxNSwxNyBAQCBzdGF0aWMgaW50IHN5c3VwZ3JhZGUoc3RydWN0IHVidXNf
Y29udGV4dCAqY3R4LCBzdHJ1Y3QgdWJ1c19vYmplY3QgKm9iaiwKIAllbnVtIHsKIAkJVkFMSURB
VElPTl9WQUxJRCwKIAkJVkFMSURBVElPTl9GT1JDRUFCTEUsCisJCVZBTElEQVRJT05fQUxMT1df
QkFDS1VQLAogCQlfX1ZBTElEQVRJT05fTUFYCiAJfTsKIAlzdGF0aWMgY29uc3Qgc3RydWN0IGJs
b2Jtc2dfcG9saWN5IHZhbGlkYXRpb25fcG9saWN5W19fVkFMSURBVElPTl9NQVhdID0gewogCQlb
VkFMSURBVElPTl9WQUxJRF0gPSB7IC5uYW1lID0gInZhbGlkIiwgLnR5cGUgPSBCTE9CTVNHX1RZ
UEVfQk9PTCB9LAogCQlbVkFMSURBVElPTl9GT1JDRUFCTEVdID0geyAubmFtZSA9ICJmb3JjZWFi
bGUiLCAudHlwZSA9IEJMT0JNU0dfVFlQRV9CT09MIH0sCisJCVtWQUxJREFUSU9OX0FMTE9XX0JB
Q0tVUF0gPSB7IC5uYW1lID0gImFsbG93X2JhY2t1cCIsIC50eXBlID0gQkxPQk1TR19UWVBFX0JP
T0wgfSwKIAl9OwogCXN0cnVjdCBibG9iX2F0dHIgKnZhbGlkYXRpb25bX19WQUxJREFUSU9OX01B
WF07CiAJc3RydWN0IGJsb2JfYXR0ciAqdGJbX19TWVNVUEdSQURFX01BWF07Ci0JYm9vbCB2YWxp
ZCwgZm9yY2VhYmxlOworCWJvb2wgdmFsaWQsIGZvcmNlYWJsZSwgYWxsb3dfYmFja3VwOwogCiAJ
aWYgKCFtc2cpCiAJCXJldHVybiBVQlVTX1NUQVRVU19JTlZBTElEX0FSR1VNRU5UOwpAQCAtNTM5
LDYgKzU0MSw3IEBAIHN0YXRpYyBpbnQgc3lzdXBncmFkZShzdHJ1Y3QgdWJ1c19jb250ZXh0ICpj
dHgsIHN0cnVjdCB1YnVzX29iamVjdCAqb2JqLAogCiAJdmFsaWQgPSB2YWxpZGF0aW9uW1ZBTElE
QVRJT05fVkFMSURdICYmIGJsb2Jtc2dfZ2V0X2Jvb2wodmFsaWRhdGlvbltWQUxJREFUSU9OX1ZB
TElEXSk7CiAJZm9yY2VhYmxlID0gdmFsaWRhdGlvbltWQUxJREFUSU9OX0ZPUkNFQUJMRV0gJiYg
YmxvYm1zZ19nZXRfYm9vbCh2YWxpZGF0aW9uW1ZBTElEQVRJT05fRk9SQ0VBQkxFXSk7CisJYWxs
b3dfYmFja3VwID0gdmFsaWRhdGlvbltWQUxJREFUSU9OX0FMTE9XX0JBQ0tVUF0gJiYgYmxvYm1z
Z19nZXRfYm9vbCh2YWxpZGF0aW9uW1ZBTElEQVRJT05fQUxMT1dfQkFDS1VQXSk7CiAKIAlpZiAo
IXZhbGlkKSB7CiAJCWlmICghZm9yY2VhYmxlKSB7CkBAIC01NDgsNiArNTUxLDkgQEAgc3RhdGlj
IGludCBzeXN1cGdyYWRlKHN0cnVjdCB1YnVzX2NvbnRleHQgKmN0eCwgc3RydWN0IHVidXNfb2Jq
ZWN0ICpvYmosCiAJCQlmcHJpbnRmKHN0ZGVyciwgIkZpcm13YXJlIGltYWdlIGlzIGludmFsaWRc
biIpOwogCQkJcmV0dXJuIFVCVVNfU1RBVFVTX05PVF9TVVBQT1JURUQ7CiAJCX0KKwl9IGVsc2Ug
aWYgKCFhbGxvd19iYWNrdXAgJiYgdGJbU1lTVVBHUkFERV9CQUNLVVBdKSB7CisJCWZwcmludGYo
c3RkZXJyLCAiRmlybXdhcmUgaW1hZ2UgZG9lc24ndCBhbGxvdyBwcmVzZXJ2aW5nIGEgYmFja3Vw
XG4iKTsKKwkJcmV0dXJuIFVCVVNfU1RBVFVTX05PVF9TVVBQT1JURUQ7CiAJfQogCiAJc3lzdXBn
cmFkZV9leGVjX3VwZ3JhZGVkKGJsb2Jtc2dfZ2V0X3N0cmluZyh0YltTWVNVUEdSQURFX1BSRUZJ
WF0pLAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=

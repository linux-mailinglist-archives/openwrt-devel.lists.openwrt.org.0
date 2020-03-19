Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3459D18B243
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 12:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hp9tiPwmG8zZQWeYG8PP+6UEOmVaYyo2UOc1r8y+qnw=; b=hLciw/VMdyUWK8
	peBKEvU5qvZLRDVihTtGXDAclz66YJbyN/N0owePaXPX0I5MbzcdWqTKjVDg5kAzud+UvLE1reVQ8
	4PIt4ESLw6bFHcEEUw86BTM3jHtGLi7O7zSLkeif9sSSNW0jMr0TH9n+eXdKzYwT/xkw+5yqECE92
	onfyv817q5PoyR61UvuUejTqrFt1wMaee036J5oZ/4CzYqYug1ypZAku3bQcyYYJb4j6oBqhc8WBa
	7LDndpRnZKy7y/QzoMZTC8P/Cc8GBbEYD4y0ntvP9vHOVjAmx+cIrefW6Wxc3ZT1uMA3puv0dmtJS
	4Iv4KLHawzxNv7SSdUoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtG5-0003pM-Jx; Thu, 19 Mar 2020 11:22:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtFz-0003p2-Kv
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 11:22:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id h6so2399050wrs.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 04:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jt1PZ6hveZbh/oewKfvv5TuGezrBEGdoNtGom8w2jVE=;
 b=McNDz2ZHVZVGHAJOA6rWYQ7q5MNDvGz5qnlmZb9/F+VNTHz6hjdd6lT3ICdDlBf0ay
 CqnYbt1N9mDJc36fi3nOK0RGkHpctkB1F3timkjvQELFYIOSVeplE1qjxprVRMMkZdco
 bZ+b8RJDwYIAGp/3MwkSwX0JUoVtbQJ30vYsK02PXar9aWQSvgil9cMTeJRFBVbeN9Gn
 4ePYQzedmfhuTFIidiFqh5NMxRI16hQRW5AZ3SKxeApkzLY1iv1mqvSVsfZTOjWKJJ76
 /OsFLlB4yJ975yPLd+1r3Rb4y6HpRBuLOQBesacpFMD+iJV+E+zKtc1Hp5Wq91PR01nW
 GEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jt1PZ6hveZbh/oewKfvv5TuGezrBEGdoNtGom8w2jVE=;
 b=IDjYfJzd0nHDsnVUOM2U+qUogIWLD2Uo3iPbz5QuptF4meMwLzS3Nd/laFCoTddQsp
 EzyiF3H911va10C75cEDdjsUKrXQ8LQwGh69UWPRZBotN8n2ixyBFhkwbZKNVBHLGJgh
 Y70d4827MCHvBr1wW1/wbFXv6rl02oL3+EAxXvWW7tiBlpmOBvX5Eht1XYZwLCh5d9lY
 t32OmSjBh7d1/NzQfBEcZhsAclrwyQkbjkqbeBOhse2wBiFXUQLyneoVNZ43yxkdy48o
 Kz/dgSBKsV0IXpFbymFOp82NSVDM00xmw5MXL2aHihCyz/xEXBDkIKmIYQ04exBD6c8B
 B7ZQ==
X-Gm-Message-State: ANhLgQ2od5bcaI1oEWky923kRIoLLrYSv683HJDr2JezCzSH/bXIJVwD
 vmdLbOJHJaR/hLiTb6UCv6emfM0nbC4wE3DO00gBm8ELFY8UIIexp9mRQQ0S6xKVVkr7Jbb3un/
 4hWJ6gXygIxJID7jo7F5FBoy1Gt9eBeV2GcZkdg0sbgk1/ktU9jetSbQfMV0yzapJPVPosq2ZkY
 B0aCnetX2Q
X-Google-Smtp-Source: ADFU+vvDPb9H8ZrOdGME/cTTvbZzDwj2k/b60038KtKQJuDZXqD5DERYGuIXqExks//Is02EEPSWzw==
X-Received: by 2002:adf:80af:: with SMTP id 44mr3656273wrl.241.1584616952640; 
 Thu, 19 Mar 2020 04:22:32 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-37.xnet.hr. [88.207.96.37])
 by smtp.googlemail.com with ESMTPSA id v2sm3102720wrt.58.2020.03.19.04.22.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 04:22:31 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
X-Google-Original-From: Robert Marko <robimarko@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 12:22:07 +0100
Message-Id: <20200319112206.620246-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_042235_748594_922974B8 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] tools: squashfskit4: fix build with GCC10
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
Cc: Robert Marko <robert.marko@sartura.hr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUm9iZXJ0IE1hcmtvIDxyb2JlcnQubWFya29Ac2FydHVyYS5ocj4KCkluIG9yZGVyIHRv
IGJ1aWxkIHNxdWFzaGZza2l0IHdpdGggR0NDMTAsIHRoaXMgYmFja3BvcnQgZnJvbSB1cHN0cmVh
bSBpcyBuZWVkZWQuCgpTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTWFya28gPHJvYmVydC5tYXJrb0Bz
YXJ0dXJhLmhyPgotLS0KIC4uLjAwMi1maXgtYnVpbGQtZmFpbHVyZS1hZ2FpbnN0LWdjYy0xMC5w
YXRjaCB8IDQzICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRp
b25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvc3F1YXNoZnNraXQ0L3BhdGNoZXMvMDAw
Mi1maXgtYnVpbGQtZmFpbHVyZS1hZ2FpbnN0LWdjYy0xMC5wYXRjaAoKZGlmZiAtLWdpdCBhL3Rv
b2xzL3NxdWFzaGZza2l0NC9wYXRjaGVzLzAwMDItZml4LWJ1aWxkLWZhaWx1cmUtYWdhaW5zdC1n
Y2MtMTAucGF0Y2ggYi90b29scy9zcXVhc2hmc2tpdDQvcGF0Y2hlcy8wMDAyLWZpeC1idWlsZC1m
YWlsdXJlLWFnYWluc3QtZ2NjLTEwLnBhdGNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAuLjQ2YzZhNWVhMGYKLS0tIC9kZXYvbnVsbAorKysgYi90b29scy9zcXVhc2hmc2tp
dDQvcGF0Y2hlcy8wMDAyLWZpeC1idWlsZC1mYWlsdXJlLWFnYWluc3QtZ2NjLTEwLnBhdGNoCkBA
IC0wLDAgKzEsNDMgQEAKK0Zyb20gZmUyZjVkYTRiMGY4OTk0MTY5YzUzZTg0YjdjYjhhMGZlZWZj
OTdiNSBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKK0Zyb206IFNlcmdlaSBUcm9maW1vdmljaCA8
c2x5Zm94QGdlbnRvby5vcmc+CitEYXRlOiBTdW4sIDI2IEphbiAyMDIwIDE4OjM1OjEzICswMDAw
CitTdWJqZWN0OiBbUEFUQ0hdIHNxdWFzaGZzLXRvb2xzOiBmaXggYnVpbGQgZmFpbHVyZSBhZ2Fp
bnN0IGdjYy0xMAorTUlNRS1WZXJzaW9uOiAxLjAKK0NvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsg
Y2hhcnNldD1VVEYtOAorQ29udGVudC1UcmFuc2Zlci1FbmNvZGluZzogOGJpdAorCitPbiBnY2Mt
MTAgKGFuZCBnY2MtOSAtZm5vLWNvbW1vbikgYnVpbGQgZmFpbHMgYXM6CisKK2BgYAorY2MgLi4u
IC1vIG1rc3F1YXNoZnMKK2xkOiByZWFkX2ZzLm86KC5ic3MrMHgwKToKKyAgbXVsdGlwbGUgZGVm
aW5pdGlvbiBvZiBgZndyaXRlcl9idWZmZXInOyBta3NxdWFzaGZzLm86KC5ic3MrMHg0MDBjOTAp
OiBmaXJzdCBkZWZpbmVkIGhlcmUKK2xkOiByZWFkX2ZzLm86KC5ic3MrMHg4KToKKyAgbXVsdGlw
bGUgZGVmaW5pdGlvbiBvZiBgYndyaXRlcl9idWZmZXInOyBta3NxdWFzaGZzLm86KC5ic3MrMHg0
MDBjOTgpOiBmaXJzdCBkZWZpbmVkIGhlcmUKK2BgYAorCitnY2MtMTAgd2lsbCBjaGFuZ2UgdGhl
IGRlZmF1bHQgZnJvbSAtZmNvbW1vbiB0byBmbm8tY29tbW9uOgoraHR0cHM6Ly9nY2MuZ251Lm9y
Zy9QUjg1Njc4LgorCitUaGUgZXJyb3IgYWxzbyBoYXBwZW5zIGlmIENGTEFHUz0tZm5vLWNvbW1v
biBwYXNzZWQgZXhwbGljaXRseS4KKworUmVwb3J0ZWQtYnk6IFRvcmFsZiBGw7Zyc3RlcgorQnVn
OiBodHRwczovL2J1Z3MuZ2VudG9vLm9yZy83MDY0NTYKK1NpZ25lZC1vZmYtYnk6IFNlcmdlaSBU
cm9maW1vdmljaCA8c2x5Zm94QGdlbnRvby5vcmc+CistLS0KKyBzcXVhc2hmcy10b29scy9ta3Nx
dWFzaGZzLmggfCAyICstCisgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCisKK2RpZmYgLS1naXQgYS9zcXVhc2hmcy10b29scy9ta3NxdWFzaGZzLmggYi9zcXVh
c2hmcy10b29scy9ta3NxdWFzaGZzLmgKK2luZGV4IDFiZWVmZWY3Li5iNjUwMzA2MyAxMDA2NDQK
Ky0tLSBhL3NxdWFzaGZzLXRvb2xzL21rc3F1YXNoZnMuaAorKysrIGIvc3F1YXNoZnMtdG9vbHMv
bWtzcXVhc2hmcy5oCitAQCAtMTQzLDcgKzE0Myw3IEBAIHN0cnVjdCBhcHBlbmRfZmlsZSB7Cisg
I2VuZGlmCisgCisgZXh0ZXJuIHN0cnVjdCBjYWNoZSAqcmVhZGVyX2J1ZmZlciwgKmZyYWdtZW50
X2J1ZmZlciwgKnJlc2VydmVfY2FjaGU7Cistc3RydWN0IGNhY2hlICpid3JpdGVyX2J1ZmZlciwg
KmZ3cml0ZXJfYnVmZmVyOworK2V4dGVybiBzdHJ1Y3QgY2FjaGUgKmJ3cml0ZXJfYnVmZmVyLCAq
ZndyaXRlcl9idWZmZXI7CisgZXh0ZXJuIHN0cnVjdCBxdWV1ZSAqdG9fcmVhZGVyLCAqdG9fZGVm
bGF0ZSwgKnRvX3dyaXRlciwgKmZyb21fd3JpdGVyLAorIAkqdG9fZnJhZywgKmxvY2tlZF9mcmFn
bWVudCwgKnRvX3Byb2Nlc3NfZnJhZzsKKyBleHRlcm4gc3RydWN0IGFwcGVuZF9maWxlICoqZmls
ZV9tYXBwaW5nOwotLSAKMi4yNi4wLnJjMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK

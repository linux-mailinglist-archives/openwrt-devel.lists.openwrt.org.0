Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A41E08D7
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 10:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+2n0KP6MQYtSSC//n1ffAn2dQi56YoWq10OA/BpIczY=; b=oIYLz8uaBc5VmC
	Fn1yRjXun3lk1yindNADRsFy/G9ilvMVIzUO1Jry5LboC8qp2vxs/ZOS0AmpbvZFgQRSdA1HSnqLO
	O9kAzxqiR4zO8DRicUIbrKpaJyiIrCLxG4M3YNfLpUwuz2ohvlb9G8iBqLtXiD76MEVRjz6vLGuex
	B1zUYOTPknUbkpZ/Ttc8FZ6TmctvnvLvNRRPJrGv7kT8eg6jBntLqrHBVAbsmrhspFw32mQRRTr82
	v1fJc4Ex+TbjBJRavg1wT7dxXAPJb+JBp7JcC3g+/ZdQO/QGGPbe9ykaVMfVQOTt54iXLQxsD/4zD
	4KTGjuvqHKzNuWhPrkYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8WI-0000EF-Sw; Mon, 25 May 2020 08:31:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8WD-0000Dp-56
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 08:31:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id q2so19790017ljm.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 01:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nodyOoLGPBenC3YtCqkTPv99dYr47HkWLvbqWxvuZtM=;
 b=u9PosGMKtyz0Sc0ocZG0frv7MzXMGhGzc6b8YB6mQ+6kFBN+AGD+hvh+ZT/Rm/2FI4
 MxDLCqSfPb63ulDf6D3HDL5eXSEEe1Ynt5B0JJLx/3Pm4g7PMOHVd+uU0pAck2d7Yi0C
 hSGxB1zWmuw2Lop3yLWeqD7r3hhS85TB7wV+puFSy1N4HETNOv3XAHWVjquJKia17wx4
 kLLF4V+VLL1GdYeLcClDYS7gNuPKRuKi4Ow42YAO8rpWlnsklodYvG8ArTu/hdMepLDm
 r5Zw7tioVfO5b1Ro6MNXOF3DziBRkcclz1FnBcZZd0M6PfaAhgeFTYtpmMnOK0zkTSju
 z/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nodyOoLGPBenC3YtCqkTPv99dYr47HkWLvbqWxvuZtM=;
 b=RZExI9djaZLql7A3MlxwTTmzHVymXA3PSDZ9Bpxc+1N2QfM4hjyly4YzAxjNNWpJWT
 JOrUJnqga7Y+WciVrEe3CDKPoiM9pBsaiwYPjW74a8MbUaboUfKPRa/CLJytQgxFC87G
 R5AKEKjHNxziBnQgZ/MgFTMgIu0AVAlqPmWE+CIpA+0KZe07z3GCxBOLddYAhzfwwaad
 ze/LvJ7yqOXjlua7r44E19n1LrVzCI5GhxuJvnCmR9HmhffjXAKnyCXAfumVMwn8Oo3i
 K7lKqRLs2EnwPikQt9SBCRzkvZosguwMiyel8t0rMT0DGS9NXBlxVXSGtfn0v5p5kE+c
 1sPA==
X-Gm-Message-State: AOAM532mMBkq2KXSFfdsoqzRBAd4hv1btx52sZ6vRcCUTOrozyNjBi7a
 779gF1SiyZPF/Jco64oQh1abaH3A
X-Google-Smtp-Source: ABdhPJwzPC60C0b7IJmgbVS0UFrM6dDA4zq13+g/P3GxEuhT6bvUGicdoGTpc93UP+oLZ62pzaSu7g==
X-Received: by 2002:a2e:958d:: with SMTP id w13mr14136585ljh.207.1590395489128; 
 Mon, 25 May 2020 01:31:29 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id e10sm3951982ljp.108.2020.05.25.01.31.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 May 2020 01:31:28 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 10:31:06 +0200
Message-Id: <20200525083106.30473-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_013133_212342_3EE11342 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH RFC libubox] blobmsg: another attrs
 iteration fix for blobmsg_check_array_len()
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
Cc: Jo-Philipp Wich <jo@mein.io>, John Crispin <john@phrozen.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Chris Nisbet <nischris@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKQWZ0ZXIgbW9yZSByZXZp
ZXdzIGlzIHNlZW1zIHRoYXQgYmxvYm1zZ19mb3JfZWFjaF9hdHRyKCkgc2hvdWxkIG5vdCBiZQp1
c2VkIHdoZW4gZGVhbGluZyB3aXRoIHVudHJ1c3RlZCBkYXRhIGFzIGl0IHJlYWRzIGxlbmd0aCBm
cm9tIGJsb2IgZGF0YQppdHNlbGYuIEl0IG1lYW5zIGl0IGNhbid0IGJlIHVzZWQgaW4gdGhlIGJs
b2Jtc2dfY2hlY2tfYXJyYXlfbGVuKCkuCgpTd2l0Y2ggYmFjayB0byB1c2luZyBfX2Jsb2Jtc2df
Zm9yX2VhY2hfYXR0cigpIEJVVCBwYXNzIGNvcnJlY3QgbGVuZ3RoCnRvIGl0LiBDYWxjdWxhdGUg
aXQgYnkgc3VidHJhY3RpbmcgaGVhZGVyIGxlbmd0aCBmcm9tIGJsb2IgbGVuZ3RoLgoKU2lnbmVk
LW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIGJsb2Jtc2cu
YyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvYmxvYm1zZy5jIGIvYmxvYm1zZy5jCmluZGV4IDU5MDQ1ZTEuLjIyOTVh
YWEgMTAwNjQ0Ci0tLSBhL2Jsb2Jtc2cuYworKysgYi9ibG9ibXNnLmMKQEAgLTE0Miw3ICsxNDIs
OCBAQCBpbnQgYmxvYm1zZ19jaGVja19hcnJheV9sZW4oY29uc3Qgc3RydWN0IGJsb2JfYXR0ciAq
YXR0ciwgaW50IHR5cGUsCiAJCXJldHVybiAtMTsKIAl9CiAKLQlibG9ibXNnX2Zvcl9lYWNoX2F0
dHIoY3VyLCBhdHRyLCByZW0pIHsKKwlyZW0gPSBibG9iX2xlbiAtICgodWludDhfdCAqKWJsb2Jt
c2dfZGF0YShhdHRyKSAtICh1aW50OF90ICopYmxvYl9kYXRhKGF0dHIpKTsKKwlfX2Jsb2Jtc2df
Zm9yX2VhY2hfYXR0cihjdXIsIGF0dHIsIHJlbSkgewogCQlpZiAodHlwZSAhPSBCTE9CTVNHX1RZ
UEVfVU5TUEVDICYmIGJsb2Jtc2dfdHlwZShjdXIpICE9IHR5cGUpCiAJCQlyZXR1cm4gLTE7CiAK
LS0gCjIuMjYuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK

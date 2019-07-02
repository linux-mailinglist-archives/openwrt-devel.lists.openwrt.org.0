Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 907055CE3B
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 13:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4KzqZ1M+QG7pJdzqx73ix84+wasyc3ED6MxM7Bd8I2k=; b=P18tzOomx+W2DT
	KCByHKPvbFYdeX/BTfE6LlAzQhFhytpyZO1PTcP5MCUTo0S6Z9n5XjohxfT28lEYohbhdZolzw1Ab
	EfVja+2TErbm8DIVY0toYP4V0jbwYcEYRCqlYXHfVPCt23P3M58q1XSZ9N5R2cF/L0E0BX8m0nQ9K
	rFsRUHkwvutdlruNpSqUu2hsRE3LucpuIfQVRgWPvYUUD6uuqNysMdhL3oFRNNy+n/QEsdngeiC2q
	JjfkwJCgeYEY1JEQAmznWZ/GpjfmU6/3hMNjmR3CLhDQkE5AvppPPULFC2nXLgngfYkAd40XDr05A
	mo4suY/hNOY3aBZSmK5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGmD-0003em-4B; Tue, 02 Jul 2019 11:16:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGls-0003eN-T2
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 11:16:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so16469629ljg.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jul 2019 04:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TIEQWI3RPbXNolL3DVf0oHtn7tALB7wzk6Dl5iUCNuY=;
 b=kWd6FK0gR7DmMwGCezyxKxM76OvSMcpxVE1EKAKeV2CJYx+dTnBXTzl1pkS51GzepK
 Jz61cxLHSZJdQA6xdDedAYoGlBteNT/foADl9F7jR9mS6892PrGhJ8ZRoTiXdIM2Drzu
 94fPgvPudTyoU73/XyKDL6RL3b4toCsrIFEgQaS31hC8Ls6bZTgh3YeZjluKvHjdOxJA
 iN5XFXXFKcjhahySvFBFXfqaIMblS2jffImeJmqqt83IcLY9YhMxv9IpQM2zWK2cxuHT
 9JJWthzNDMVsjIHi1U9e8/CTwOR8YSoGNDmWLD1fPHkruMCZFyZHQfNpkMng5P6+hRtT
 PARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TIEQWI3RPbXNolL3DVf0oHtn7tALB7wzk6Dl5iUCNuY=;
 b=pIwtjBgLI0AZk7Rmh2GCCFxu/OQeR44as6MocNU9VnvAHiID2XmIJZ/oYyr8CeDmVx
 4riycQpy73m9mgucp4DHXSQv/hFgDMYeT9lPNv9Lcijo2XPz3yfDKNNBy1yOCcCLv96S
 yccGK070QfHny3sNjrEknWCLuEGe5JiGY4P6msBA3CqpMlfIV8710uQhEDbS5OaQbSVl
 Ceyro1olTr9UTkxR+P6EVI58jBGqqV74hx4bMuImatRECP8El9xP8hef8JlujOe0Hlml
 hXOImQTAzw/PkPACHXNM7VkOZiUWUTgcYMo8mDkm/WTMF6IhR5voIsokeQlNpYp0NSh8
 b/sg==
X-Gm-Message-State: APjAAAXS/YmBvoZfpaOP3jfFmXKrTDpJdlg1p+BYscowBZvHPo5zNw1s
 EN5A6D1NXxaclB8JH7oWOJEGXsYN
X-Google-Smtp-Source: APXvYqyphK3hgQgNcL4uXHxT3Ld/UP0zvb9oeY9Sey4qJ7DBGb/UXV7aAEPMxVMbIB6g5lAo5jg0EQ==
X-Received: by 2002:a2e:3a01:: with SMTP id h1mr16360723lja.132.1562066181104; 
 Tue, 02 Jul 2019 04:16:21 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id d15sm2941451lfq.76.2019.07.02.04.16.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 04:16:20 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jul 2019 13:16:08 +0200
Message-Id: <20190702111608.24598-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_041624_964615_42EE1FF0 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] base-files: drop unused jffs2_copy_config()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXRzIGxhc3QgdXNhZ2Ug
d2FzIGRyb3BwZWQgYmFjayBpbiAyMDEzIGluIHRoZSBjb21taXQgYjk1YmRjOGFiNTZlCigia2Vy
bmVsL2Jhc2UtZmlsZXM6IGNsZWFuIHVwIG9sZCBjb2RlIHJlbGF0ZWQgdG8gcmVmcmVzaGluZyBt
dGQKcGFydGl0aW9ucywgaXQgaXMgbm8gbG9uZ2VyIHVzZWQgYW55d2hlcmUiKS4KClNpZ25lZC1v
ZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL2Jh
c2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvY29tbW9uLnNoIHwgMTAgLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21tb24uc2ggYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmls
ZXMvbGliL3VwZ3JhZGUvY29tbW9uLnNoCmluZGV4IGJiZWRlZWZkMjYuLjBmNmZhYjk3ZjggMTAw
NjQ0Ci0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21tb24uc2gK
KysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5zaApAQCAt
MjA3LDE2ICsyMDcsNiBAQCBnZXRfcGFydGl0aW9ucygpIHsgIyA8ZGV2aWNlPiA8ZmlsZW5hbWU+
CiAJZmkKIH0KIAotamZmczJfY29weV9jb25maWcoKSB7Ci0JaWYgZ3JlcCByb290ZnNfZGF0YSAv
cHJvYy9tdGQgPi9kZXYvbnVsbDsgdGhlbgotCQkjIHNxdWFzaGZzK2pmZnMyCi0JCW10ZCAtZSBy
b290ZnNfZGF0YSBqZmZzMndyaXRlICIkQ09ORl9UQVIiIHJvb3Rmc19kYXRhCi0JZWxzZQotCQkj
IGpmZnMyCi0JCW10ZCBqZmZzMndyaXRlICIkQ09ORl9UQVIiIHJvb3RmcwotCWZpCi19Ci0KIGlu
ZGljYXRlX3VwZ3JhZGUoKSB7CiAJLiAvZXRjL2RpYWcuc2gKIAlzZXRfc3RhdGUgdXBncmFkZQot
LSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0
Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1k
ZXZlbAo=

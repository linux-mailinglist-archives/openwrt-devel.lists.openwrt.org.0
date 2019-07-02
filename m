Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0749D5D139
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 16:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3S8Qs/OnNliSuq+QHn4OIOtYVgph1CtPVYY4FekUpTk=; b=bsvlG/Ykw2xUri
	uYjYd+K4uvF1c+KJ1+hLJuDzQ9Jznu5U3jKVZzhxb2SLL0rodz01CMEUxk42LgAuI3F9rWZoizLnC
	2ExTChIhE+ZiD+FTTYX38SViRIsIpOKAMBO5MbC/0uIGm+Jq42sK9hDvPzeam8yPQyOWyG2y+hR5i
	3Gcsf640wMcEYpBj8Itb9h9XyTubHjssfAmlWus9Uhd8tsHLN66+dlGqyfTY+fAtv9GdnOpP7ifVT
	qCRC66I2cK2tYc/P8xxK2y7jf0ldt6wtTERWJ3jitl33zKn+FO+qTOgyCD7OcbrZxOZEp3TytSlLZ
	d0u/nxcDcJVP6G8ReCfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJV4-0006Uj-G8; Tue, 02 Jul 2019 14:11:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJUw-0006US-Ic
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 14:11:07 +0000
Received: by mail-lf1-x12a.google.com with SMTP id p24so11491054lfo.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jul 2019 07:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLZdRiwWKBMsWTZr7jdi4yGPbjXXipKYhheU+1JLW5Y=;
 b=HpyPX9BYVt4/1G4rpO+9zVHhzLq9By9GYHu25VEIyJUJyP3POWSpNWZGxR/2bvHwnD
 j1elbipTq6nS7U0uaPeornAzeKuUCOQj2gw0kog6S5gwgOFjRUfwpCdM7JWra2o2jS2u
 6gEc4E9jNVsOidUibcvofcMsWwNGNm0OyiZFrxvhsDbcDu85q9oAND2H9IyLFqKIpY2Q
 caieujcRG8XIj5qaJA7MBJ1uqgMFnKFwST8cMzgRdiZiz0Lr+jSVyH+Qbm7KqAb1YgOM
 UZb7/sg9MednuT3lMh6FXFRN6ri8VgE9qAyFCRbhJFJbbRabv0nq5A9dIGR8YprBnX1A
 qqEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mLZdRiwWKBMsWTZr7jdi4yGPbjXXipKYhheU+1JLW5Y=;
 b=mprWJ4uFv1R8iNIQhLhTpWgPgELXeto+bdZQKtH2qAZma8i7n+0fxAuVVmDgMsveMG
 YcNxXUVLLZEFj9gODXF/Xak5irZo3+OtaHqEf5TJPSKXpLZpg0V4oeOOR08GQIQTdNLp
 yUoFbjEx/qmVQ4Zs7+QJ9UdkhV/dIHoprGNpNaxRk40w5djRviowjx3ZhjLEhSIDuXkc
 a419n7EQpw6AE2o+x65r8ELkDoIQ70OyIXFSZIhXsYNmNjDeha9ybIH7OnejZSKZK/CM
 xJ9VHz/GuDDMdsgoIbkBpwiu/Wo3jMzl0HL29U46Ude3DF++OtTuwemnx//RmAUqIefB
 zheQ==
X-Gm-Message-State: APjAAAXGTmUnej0hbb/lJC8rGPcbCOnH3UsNYsQe4KfDwAbsONR4kka3
 R7wQnPpyiG96izxAQodvIYbAUMra
X-Google-Smtp-Source: APXvYqwQNbNcE/R7fpAH7ZUwIsbxzVFQH6cncFGCfqEMK0sufp4MVSdInr5N/rxVMj1XFyB9k8aaMw==
X-Received: by 2002:ac2:5189:: with SMTP id u9mr15110831lfi.189.1562076664051; 
 Tue, 02 Jul 2019 07:11:04 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y12sm3318690lfy.36.2019.07.02.07.11.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 07:11:03 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jul 2019 16:10:56 +0200
Message-Id: <20190702141057.23433-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_071106_625841_5B4B6382 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/2] bcm53xx: sysupgrade: call
 nand_do_upgrade() from platform_do_upgrade()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKQ2FsbGluZyBuYW5kX2Rv
X3VwZ3JhZGUoKSBmcm9tIHBsYXRmb3JtX3ByZV91cGdyYWRlKCkgd2FzIG9ic29sZXRlZCBpbgp0
aGUgY29tbWl0IDMwZjYxYTM0YjRjZiAoImJhc2UtZmlsZXM6IGFsd2F5cyB1c2Ugc3RhZ2VkIHN5
c3VwZ3JhZGUiKS4KClRoaXMgY2hhbmdlIGJyaW5ncyBiY201M3h4IGluIHN5bmMgd2l0aCBvdGhl
ciB0YXJnZXRzIGFuZCBhbGxvd3MKZHJvcHBpbmcgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBjb2Rl
LiBJdCBzaG91bGRuJ3QgY2hhbmdlIGFueSB1c2VyCnZpc2libGUgYmVoYXZpb3IuCgpTaWduZWQt
b2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogLi4uL2Jhc2Ut
ZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggICAgICAgIHwgMjkgKysrKysrKystLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9iY201M3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUv
cGxhdGZvcm0uc2ggYi90YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZpbGVzL2xpYi91cGdyYWRl
L3BsYXRmb3JtLnNoCmluZGV4IDVhNDJhMzZhZTQuLjFkODI5YzY1MTkgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9iY201M3h4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gKKysr
IGIvdGFyZ2V0L2xpbnV4L2JjbTUzeHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0Zm9ybS5z
aApAQCAtMSw0ICsxLDQgQEAKLVJBTUZTX0NPUFlfQklOPSdvc2FmZWxvYWRlciBvc2VhbWEnCitS
QU1GU19DT1BZX0JJTj0nb3NhZmVsb2FkZXIgb3NlYW1hIG90cngnCiAKIFBBUlRfTkFNRT1maXJt
d2FyZQogCkBAIC0xNDcsNyArMTQ3LDcgQEAgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7CiAKICMg
JCgxKTogaW1hZ2UgZm9yIHVwZ3JhZGUgKHdpdGggcG9zc2libGUgZXh0cmEgaGVhZGVyKQogIyAk
KDIpOiBvZmZzZXQgb2YgdHJ4IGluIGltYWdlCi1wbGF0Zm9ybV9wcmVfdXBncmFkZV90cngoKSB7
CitwbGF0Zm9ybV9kb191cGdyYWRlX25hbmRfdHJ4KCkgewogCWxvY2FsIGRpcj0iL3RtcC9zeXN1
cGdyYWRlLWJjbTUzeHgiCiAJbG9jYWwgdHJ4PSIkMSIKIAlsb2NhbCBvZmZzZXQ9IiQyIgpAQCAt
MjEwLDcgKzIxMCw3IEBAIHBsYXRmb3JtX3ByZV91cGdyYWRlX3RyeCgpIHsKIAluYW5kX2RvX3Vw
Z3JhZGUgL3RtcC9yb290LnViaQogfQogCi1wbGF0Zm9ybV9wcmVfdXBncmFkZV9zZWFtYSgpIHsK
K3BsYXRmb3JtX2RvX3VwZ3JhZGVfbmFuZF9zZWFtYSgpIHsKIAlsb2NhbCBkaXI9Ii90bXAvc3lz
dXBncmFkZS1iY201M3h4IgogCWxvY2FsIHNlYW1hPSIkMSIKIAlsb2NhbCB0bXAKQEAgLTI1Nywy
MCArMjU3LDYgQEAgcGxhdGZvcm1fcHJlX3VwZ3JhZGVfc2VhbWEoKSB7CiAJbmFuZF9kb191cGdy
YWRlICRkaXIvcm9vdC51YmkKIH0KIAotcGxhdGZvcm1fcHJlX3VwZ3JhZGUoKSB7Ci0JbG9jYWwg
ZmlsZV90eXBlPSQocGxhdGZvcm1faWRlbnRpZnkgIiQxIikKLQotCVsgIiQocGxhdGZvcm1fZmxh
c2hfdHlwZSkiICE9ICJuYW5kIiBdICYmIHJldHVybgotCi0JIyBGaW5kIHRyeCBvZmZzZXQKLQlj
YXNlICIkZmlsZV90eXBlIiBpbgotCQkiY2hrIikJCXBsYXRmb3JtX3ByZV91cGdyYWRlX3RyeCAi
JDEiICQoKDB4JChnZXRfbWFnaWNfbG9uZ19hdCAiJDEiIDQpKSk7OwotCQkiY3liZXJ0YW4iKQlw
bGF0Zm9ybV9wcmVfdXBncmFkZV90cnggIiQxIiAzMjs7Ci0JCSJzZWFtYSIpCXBsYXRmb3JtX3By
ZV91cGdyYWRlX3NlYW1hICIkMSI7OwotCQkidHJ4IikJCXBsYXRmb3JtX3ByZV91cGdyYWRlX3Ry
eCAiJDEiOzsKLQllc2FjCi19Ci0KIHBsYXRmb3JtX3RyeF9mcm9tX2Noa19jbWQoKSB7CiAJbG9j
YWwgaGVhZGVyX2xlbj0kKCgweCQoZ2V0X21hZ2ljX2xvbmdfYXQgIiQxIiA0KSkpCiAKQEAgLTMy
MSw2ICszMDcsMTUgQEAgcGxhdGZvcm1fZG9fdXBncmFkZSgpIHsKIAlsb2NhbCBjbWQ9CiAKIAlb
ICIkKHBsYXRmb3JtX2ZsYXNoX3R5cGUpIiA9PSAibmFuZCIgXSAmJiB7CisJCWNhc2UgIiRmaWxl
X3R5cGUiIGluCisJCQkiY2hrIikJCXBsYXRmb3JtX2RvX3VwZ3JhZGVfbmFuZF90cnggIiQxIiAk
KCgweCQoZ2V0X21hZ2ljX2xvbmdfYXQgIiQxIiA0KSkpOzsKKwkJCSJjeWJlcnRhbiIpCXBsYXRm
b3JtX2RvX3VwZ3JhZGVfbmFuZF90cnggIiQxIiAzMjs7CisJCQkic2VhbWEiKQlwbGF0Zm9ybV9k
b191cGdyYWRlX25hbmRfc2VhbWEgIiQxIjs7CisJCQkidHJ4IikJCXBsYXRmb3JtX2RvX3VwZ3Jh
ZGVfbmFuZF90cnggIiQxIjs7CisJCWVzYWMKKworCQkjIEFib3ZlIGNhbGxzIGV4aXQgb24gc3Vj
Y2Vzcy4KKwkJIyBJZiB3ZSBnb3QgaGVyZSBzb21ldGhpbmcgd2VudCB3cm9uZy4KIAkJZWNobyAi
V3JpdGluZyB3aG9sZSBpbWFnZSB0byBOQU5EIGZsYXNoLiBBbGwgZXJhc2UgY291bnRlcnMgd2ls
bCBiZSBsb3N0LiIKIAl9CiAKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

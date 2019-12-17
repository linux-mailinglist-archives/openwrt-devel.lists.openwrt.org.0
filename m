Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4310E12256D
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 08:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrDMXEwOh0sFXNmpJJ+DD5EnI3rFYEaI0tQaqB1xBKw=; b=moFUBItxvpO++t
	jFMGF/aSJUqyuxCHE3RCK/wk8BaECAwoY7tVhLQ3kQ+BII9bUibQwKwAe3jSjTD2zShQOygaYj+WI
	eDAu1pZoY2ncUfuJ8V8tyNnt1nRrpZj/JO6EtlgHsfa5LHNXKtpMTuug8cpAj8cAL3zVBcN/3C7tM
	QToULnAl0ALsSIiItoLLRnpC0k9Jg+xMeU0thwl84xmRTkeBG6uuCkij6FcYbq2jDzKl24mVqxpQ9
	a4cWFXePX76DlB5pjsVZlUglfncvlpc8zNVf3eDj9pxoTDvFG1kR2seGspAgP/AVt6Xf39B1Mge7i
	2a6LCLslxncA4tO3kJ1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7I6-0004sn-Mv; Tue, 17 Dec 2019 07:29:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7Hj-0004iT-RH
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 07:28:49 +0000
Received: by mail-lf1-x141.google.com with SMTP id i23so6187627lfo.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Dec 2019 23:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2IbLKk7Lqxs6r9Ix4y+xK7D2k1SyEg/RPWzHe6HGMW4=;
 b=aVo3HSBsLCH4YPJsAnaXh66FGgIQ3tjwBO5HEXPNenmPJQ5a4iGpUPVWoOqufpO+rt
 A9beX4NLaA1oDZ3mXdI/8cLRQ4LTheO7BVkN3M5S1w57hLnnbO/LIqUDbGQmjQBMsrG/
 rZfRdhLf6FltdEkTT0C3V7a3DRckV5BoK9KEBGCO7rcV5CqYye3C01w1eZz+eqmWA4uw
 TB5hL4co2rOprxMsUFjXnzCNP9m/BI2T657mGsrD/WZDP1LFrMwT+8XytbYX7QUoNmAc
 eJhhYtfqosSmwoRl+cX270GzImhg/816nBG6Owl1qGxDPhh1Qi47VDc3MXq4ggeBNpSF
 ph9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2IbLKk7Lqxs6r9Ix4y+xK7D2k1SyEg/RPWzHe6HGMW4=;
 b=g3rCIj3ggmPZOYi6XUgV2irvLSXe/CGk9vmTcCn+CdhNPIeKRelEAMZ62Xv6JSFuSo
 F7V2+UF71OjjjSt4NDSwlu+8q+1GeKK4HwrMeLXMumOPfrcISgIJ65hKKYyg1M1ORG/R
 0kBgEfkF73zoAqTYjiU2gu0p+5MmfQiqcK3uKXWkyTNsMZF6E87htLao2TFovZwKF5U2
 YTyN99XJC5T5DgERl//lK3j0T8k4uMnSVVFUFAS6pgu5FghqpkcFyD9AHD6ZvJa8X/HZ
 oYNb+0vZlsFcVzqRp//8v3sMohhbIXbqn069FNAQBC3Mloq2Ek+8Ze6KimrdCwnSJdFx
 jgdg==
X-Gm-Message-State: APjAAAXNNlQcOco1M4o9ivVIbNMfUGYgB5SKb9hZ3w1TX4vSWtySZHS0
 3vtwGf18hLxGp7AUGlM5FCLzdXgg
X-Google-Smtp-Source: APXvYqwXK1vz0TVl5G0RzbvmnqTaqtlj9iGjRfwDBhZWyaVnxZx4e9efCYjUulxkhDNCrzDzaCMrig==
X-Received: by 2002:ac2:47e6:: with SMTP id b6mr1857597lfp.96.1576567725932;
 Mon, 16 Dec 2019 23:28:45 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm11919221ljd.88.2019.12.16.23.28.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Dec 2019 23:28:45 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 08:28:34 +0100
Message-Id: <20191217072836.11411-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191217072836.11411-1-zajec5@gmail.com>
References: <20191217072836.11411-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_232847_881705_95E754A2 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools 1/3] libblkid-tiny: add
 blkid_probe_set_id_label() stub
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBzdHViIHdpbGwg
YWxsb3cgcG9ydGluZyBtb3JlIHVwc3RyZWFtIGNvZGUgd2l0aG91dCBjb21tZW50aW5nIG91dApj
YWxscyBhbmQgdGhlbSB1bnVzZWQgdmFyaWFibGVzLiBUaGlzIHdpbGwgc2ltcGxpZnkgbWFpbnRl
bmFuY2UuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+
Ci0tLQogbGliYmxraWQtdGlueS9saWJibGtpZC10aW55LmMgfCA2ICsrKysrKwogbGliYmxraWQt
dGlueS9zdXBlcmJsb2Nrcy5oICAgfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2xpYmJsa2lkLXRpbnkvbGliYmxraWQt
dGlueS5jIGIvbGliYmxraWQtdGlueS9saWJibGtpZC10aW55LmMKaW5kZXggMDViNGI5OS4uNTI0
NzBjYSAxMDA2NDQKLS0tIGEvbGliYmxraWQtdGlueS9saWJibGtpZC10aW55LmMKKysrIGIvbGli
YmxraWQtdGlueS9saWJibGtpZC10aW55LmMKQEAgLTEwMSw2ICsxMDEsMTIgQEAgdW5zaWduZWQg
Y2hhciAqYmxraWRfcHJvYmVfZ2V0X2J1ZmZlcihibGtpZF9wcm9iZSBwciwKIAlyZXR1cm4gYmYt
PmRhdGE7CiB9CiAKK2ludCBibGtpZF9wcm9iZV9zZXRfaWRfbGFiZWwoYmxraWRfcHJvYmUgcHIs
IGNvbnN0IGNoYXIgKm5hbWUsCisJCQkgICAgIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmRhdGEsIHNp
emVfdCBsZW4pCit7CisJcmV0dXJuIC1FTk9UU1VQOworfQorCiBpbnQgYmxraWRfcHJvYmVfc2V0
X2xhYmVsKGJsa2lkX3Byb2JlIHByLCB1bnNpZ25lZCBjaGFyICpsYWJlbCwgc2l6ZV90IGxlbikK
IHsKIAlpZiAobGVuID4gKHNpemVvZihwci0+bGFiZWwpIC0gMSkpIHsKZGlmZiAtLWdpdCBhL2xp
YmJsa2lkLXRpbnkvc3VwZXJibG9ja3MuaCBiL2xpYmJsa2lkLXRpbnkvc3VwZXJibG9ja3MuaApp
bmRleCBjZGU4YTQwLi5hZGUyYWUwIDEwMDY0NAotLS0gYS9saWJibGtpZC10aW55L3N1cGVyYmxv
Y2tzLmgKKysrIGIvbGliYmxraWQtdGlueS9zdXBlcmJsb2Nrcy5oCkBAIC05Nyw3ICs5Nyw3IEBA
IGV4dGVybiBpbnQgYmxraWRfcHJvYmVfc2V0X3V1aWQoYmxraWRfcHJvYmUgcHIsIHVuc2lnbmVk
IGNoYXIgKnV1aWQpOwogZXh0ZXJuIGludCBibGtpZF9wcm9iZV9zZXRfdXVpZF9hcyhibGtpZF9w
cm9iZSBwciwgdW5zaWduZWQgY2hhciAqdXVpZCwgY29uc3QgY2hhciAqbmFtZSk7CiAKIGV4dGVy
biBpbnQgYmxraWRfcHJvYmVfc2V0X2lkX2xhYmVsKGJsa2lkX3Byb2JlIHByLCBjb25zdCBjaGFy
ICpuYW1lLAotCQkJICAgICB1bnNpZ25lZCBjaGFyICpkYXRhLCBzaXplX3QgbGVuKTsKKwkJCSAg
ICAgY29uc3QgdW5zaWduZWQgY2hhciAqZGF0YSwgc2l6ZV90IGxlbik7CiBleHRlcm4gaW50IGJs
a2lkX3Byb2JlX3NldF91dGY4X2lkX2xhYmVsKGJsa2lkX3Byb2JlIHByLCBjb25zdCBjaGFyICpu
YW1lLAogCQkJICAgICB1bnNpZ25lZCBjaGFyICpkYXRhLCBzaXplX3QgbGVuLCBpbnQgZW5jKTsK
IAotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C741831B0
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 14:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBAwiw3cZQ0YEiYPMcVizcgSQ+MPASw7pEae89sljx0=; b=fvE5YmBdIfpyrf
	8uRRhxGCBiqQ334vSw+Qr3pXN1H54QBn9YhbAX5M7uDhCpAJZ7wOSpi2KEmwZRX3SZv6KB7LW81hf
	loY2heLzW9TMny7HT21/zmLbEA/dCRO1KUBzI4+LW1dmAktZ0SqPBP7R87TO/64WSARyjkL5ekTJ6
	O6G6mjbAEAotM/FtCsJGqQwvF6zpiDgnPTF3sLzGSJbKwIvHyRPFGJ5v0S858u6/mU0sQppvyPMML
	bsLj0wH74SFw9zqZyPDghQm+rOrYNBXG882rX0ohmS611owphShkjBZbdBz9OcWWFhtg+w50rlT4W
	EdLoBc2jLE1eehEPOmZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCO0p-0000nv-Ij; Thu, 12 Mar 2020 13:36:35 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNzy-0008Pw-U7
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 13:35:44 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id E63CAC0F87;
 Thu, 12 Mar 2020 13:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584020137; bh=R014Ufv7VytKtHUFunX1DXwrkTbrh8bWtNAs6bAspk0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IpYQmZJKlObfr1Leh3+5yQhv6aE1rS0VwvZ7yrO4IlHVmZiCCSlVN789KDMrrj+cF
 ZcHgHIZPVWWhWX89/bYsFeStvIJMlQtd51lxsQwXYetpN+pSCCsS5DQP7K7iFgFHjn
 sxSa3Qh0EPuWbYPiNXUoEDWUjm81BALeTPovMVQH7aU/Dj7o9AfOM41Qzhf2hnmn3y
 fc65IUZiZShCQHW13c4tX4/S3PwqGaVhH7zZLNb7YW8tZK5XQxABWVY67koAvOAJjm
 AKnkOECFVxlchtiL6D6AHQXpgGn6N9vzf9zHRdz1jk5Iw9iixoJEuuZ2qEZfcUrdOD
 NsQSFj86u842A==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 42287A0061;
 Thu, 12 Mar 2020 13:35:35 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Mar 2020 16:34:58 +0300
Message-Id: <20200312133501.17939-3-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063543_033346_E9E5DD5B 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/5] toolchain/gcc: make GCC9 by default for
 archs38
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SXQgaXMgbmVjZXNzYXJ5IHRvIHVzZSBHQ0M5IGZvciBidWlsZGluZyBMaW51eCA1LjQueCB2ZXJz
aW9uIGZvcgphcmNoczM4LCBpbiBHQ0M4IHRoZSBjcml0aWNhbCBmaXhlcyBhcmUgbWlzc2luZyBh
bmQgSUNFIGFwcGVhcnMKZHVyaW5nIGJ1aWxkaW5nLgoKU2lnbmVkLW9mZi1ieTogRXZnZW5peSBE
aWRpbiA8RXZnZW5peS5EaWRpbkBzeW5vcHN5cy5jb20+CkNjOiBBbGV4ZXkgQnJvZGtpbiA8YWJy
b2RraW5Ac3lub3BzeXMuY29tPgpDYzogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KQ2M6
IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPgpDYzogSm9obiBDcmlzcGluIDxqb2hu
QHBocm96ZW4ub3JnPgotLS0KIHRvb2xjaGFpbi9nY2MvQ29uZmlnLnZlcnNpb24gfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL3Rvb2xjaGFpbi9nY2Mv
Q29uZmlnLnZlcnNpb24gYi90b29sY2hhaW4vZ2NjL0NvbmZpZy52ZXJzaW9uCmluZGV4IDc4MTll
OWQwMzkuLjIzNWExMjY1OTggMTAwNjQ0Ci0tLSBhL3Rvb2xjaGFpbi9nY2MvQ29uZmlnLnZlcnNp
b24KKysrIGIvdG9vbGNoYWluL2djYy9Db25maWcudmVyc2lvbgpAQCAtOCw2ICs4LDcgQEAgY29u
ZmlnIEdDQ19WRVJTSU9OXzcKIAogY29uZmlnIEdDQ19WRVJTSU9OXzkKIAlkZWZhdWx0IHkgaWYg
R0NDX1VTRV9WRVJTSU9OXzkKKwlkZWZhdWx0IHkgaWYgVEFSR0VUX2FyY2hzMzgKIAlib29sCiAK
IGNvbmZpZyBHQ0NfVkVSU0lPTgotLSAKMi4yMy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxt
YW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

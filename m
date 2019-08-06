Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D8582D54
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 10:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GuvzqV34wjbVCZNyJb7+/PcHWjVpFY2V/WGiK7d/iYc=; b=WXwzjC9GsIrJ8W
	+SOsKAake3v38N+YCUjeEDpluwjNzXTQGNef07J9xx3AoMd45F/BC/vSfOSK0ULB4aNmcyjhBwgbF
	X9LJhoC29M8KZbXrZXr/nq2J/4SH3VX4ZMKE2GKVGtZFs1uOgknXAE1wf4Ew7bX3d18TY/LsbOta3
	uf+LpjOO5Bs3NYk62TY0r5LbbUrJW8rT7yjNr7I9ZzvzOaiKzx3MVrOV75WZaeRmY1weKLZudE4Kv
	lo8NAV/ffOcfhbYogxoAoFdbJXHBPwlXBMvnWi/du1jHdu5G+nWANtM3OphaPE/X0TMVnGpHL/9Vq
	oPan21SNr9I+ONOYuNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huuPi-0000gi-KM; Tue, 06 Aug 2019 08:01:46 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huuPR-0000gI-E1
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 08:01:30 +0000
Received: by mail-lf1-x143.google.com with SMTP id v16so6417529lfg.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 06 Aug 2019 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ipyrEO/T1aelBNsUV0R/bF6/NaVrYfNCN79FrfhP4bs=;
 b=ngkhyNar6sZOMCMk2pfQ8s56LCAczoknGFK0BpbNxsFmqrN69MGvTv9mem5OjTZqvi
 Pc0jQ/y0uQ+bwMoorgyLc4s87tuoSQmRF3AKhaK023rXlfzu8IexWjGKntOj7BkGsS+L
 sisJx6uTFNzlKT8dUVcMs7WcsqYGLfIZJlO7Kr6LAwcCMREpAfJgUQ8ykyKG/dEDDGTL
 gIKtxdlLlhjL5gbC6si6g+gkYw+PCIgzo2kTGBrax5RHPvvBQL4DoKBYo5i2G2iyIOt3
 CFBhZeg+bxvZLtCxYJp//ok/g14v9XSfrMzy9fmO/wwuD4lxdL/yvWTzTLOld+ZakBHm
 IJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ipyrEO/T1aelBNsUV0R/bF6/NaVrYfNCN79FrfhP4bs=;
 b=Hd/a9xInJixur5GOKB4zQq3WNmbz912WN/nZwVBnodmlVSuchsn7U31wkMUqz2SI53
 4WEPb9VMsbI8xqJpV8yjECcrJdw77T2mN8rqWdt4jbyl5vRl9dhKHzTtd2LqFmnKr6J/
 CexVpGm/RC0iETEqRFD85CHNdhflFvZYH5p5f/riuyv5gsvICWHL8ivZvOwCv9WkRMtI
 WHlDNlrz/YLw1yS629NedzsoYSypxWLdz9MpYmVFtFAI89Y6lmQcl+nAzvPRUEanTVcr
 SaVJWjcZX1PxcRW2iOF0cSZf5Pb9l+TAnF3C5LOuiWv60p6Ki/Yj3/uhAga0ESBq9Ypc
 l7Ng==
X-Gm-Message-State: APjAAAXYEPnoi+i+KnR1tsMgkkupqyx/x4/Sj0G95epgyr/oMJQM3f/m
 b/sTXUqdFy6ddjSWK0VrSJ6rHVlF
X-Google-Smtp-Source: APXvYqxgwjRcC6e4NhxhT9lajO8TQJy/Sc9Qc2fCVbR7tWdEx3J6RSQuDoOsAOipd2dm4Sz8PCrkhA==
X-Received: by 2002:a19:7908:: with SMTP id u8mr1476861lfc.178.1565078486709; 
 Tue, 06 Aug 2019 01:01:26 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id x137sm15373529lff.23.2019.08.06.01.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 01:01:25 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  6 Aug 2019 10:01:15 +0200
Message-Id: <20190806080115.17406-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_010129_474278_685CCDEC 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] kernel: drop Fon(Foxconn) parser matching
 for the "firmware" partition
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
 NOGUCHI Hiroshi <drvlabo@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBwYXJzZXIncyBt
YXRjaGluZyBmdW5jdGlvbiBhcHBlYXJzIHRvIGJlIHRvbyBnZW5lcmljIGFzIGl0IG1hdGNoZXMK
ZS5nLiBCdWZmYWxvIFdaUi1IUC1HMzAwTkguIFRoYXQgcmVzdWx0cyBpbiBpbmNvcnJlY3QgcGFy
dHMgcGFyc2luZy4KCkx1Y2tpbHkgdGhpcyBwYXJzZXIgaXMgbmVlZGVkIGJ5IEZvbiBGT04yNjAx
IG9ubHkgd2hpY2ggdXNlcyBEVC1iYXNlZApyYW1pcHMgdGFyZ2V0LiBJdCBtZWFucyB3ZSBjYW4g
ZGVwZW5kIG9uIG10ZCBzdWJzeXN0ZW0gbWF0Y2hpbmcgb2YKImZvbmZ4Yyx1aW1hZ2UiIHN0cmlu
Zy4KClRoYXQgc2FpZCB0cmlnZ2VyaW5nIHRoaXMgcGFyc2VyIGJhc2VkIG9uIHRoZSAiZmlybXdh
cmUiIChvciB3aGF0ZXZlcgpNVERfU1BMSVRfRklSTVdBUkVfTkFNRSBpcykgcGFydGlpdG9uIG5h
bWUgaXMgbm90IG5lZWRlZC4gSXQgY2FuIGJlCmRyb3BwZWQgd2hpY2ggd2lsbCBhdXRvbWF0aWNh
bGx5IGZpeCB0aGUgQnVmZmFsbyBXWlItSFAtRzMwME5IIGNhc2UuCgpGaXhlczogYTFjNmEzMTZk
Mjk5ICgicmFtaXBzOiBhZGQgc3VwcG9ydCBmb3IgRm9uIEZPTjI2MDEiKQpTaWduZWQtb2ZmLWJ5
OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogLi4uL2xpbnV4L2dlbmVy
aWMvZmlsZXMvZHJpdmVycy9tdGQvbXRkc3BsaXQvbXRkc3BsaXRfdWltYWdlLmMgICB8IDEgLQog
MSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
Z2VuZXJpYy9maWxlcy9kcml2ZXJzL210ZC9tdGRzcGxpdC9tdGRzcGxpdF91aW1hZ2UuYyBiL3Rh
cmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvbXRkL210ZHNwbGl0L210ZHNwbGl0X3Vp
bWFnZS5jCmluZGV4IDA5MTQwM2FlOTEuLjQxMzQ3ZDA0MTkgMTAwNjQ0Ci0tLSBhL3RhcmdldC9s
aW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvbXRkL210ZHNwbGl0L210ZHNwbGl0X3VpbWFnZS5j
CisrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvbXRkL210ZHNwbGl0L210
ZHNwbGl0X3VpbWFnZS5jCkBAIC00MjEsNyArNDIxLDYgQEAgc3RhdGljIHN0cnVjdCBtdGRfcGFy
dF9wYXJzZXIgdWltYWdlX2ZvbmZ4Y19wYXJzZXIgPSB7CiAJLm9mX21hdGNoX3RhYmxlID0gbXRk
c3BsaXRfdWltYWdlX2ZvbmZ4Y19vZl9tYXRjaF90YWJsZSwKICNlbmRpZgogCS5wYXJzZV9mbiA9
IG10ZHNwbGl0X3VpbWFnZV9wYXJzZV9mb25meGMsCi0JLnR5cGUgPSBNVERfUEFSU0VSX1RZUEVf
RklSTVdBUkUsCiB9OwogCiAvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK

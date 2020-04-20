Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20BA1B0CC8
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awzkiOQnNnRh5LU9nygqsuQopbFWB/oC4RTNWLhrMzY=; b=A08Uyu5efFtjSS
	xbDlRZCP3Fibei2COLmSrZyQIgDWovORcw4XhsMT/ibAbWsnTvpFBNvOOriwxD29zEoap4K/kCa0t
	YYALXc3ioLditDkQCkomqiObt1LXSDTIu0lV2GmiHNwyuBQl/372tVfeAMxp1cCR6MbKVqjpctlCz
	kF3kQhYDpTsjCpNDUA3/kW98p9bCGWXrwSEIONNiAsTlyvSw8Cmx7FmJ+mVYIay1EDwLheX9pWN1z
	ACHwNmwVIt3Rt5amhaqxC7Dnh0LcQx4Ckv0ljJV70uVEgZgE50jpHWDQ934TQFy+Uj2lR+N1Rm4+8
	tmT4JH1Votnv2wur1unA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWbJ-0001d7-M4; Mon, 20 Apr 2020 13:36:41 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWaB-0000Pv-Hq
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:33 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 13D00600C0;
 Mon, 20 Apr 2020 15:35:27 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 13D00600C0
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 13D00600C0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389728; bh=NLZweEpUr0s5Z2wouA4ua+FIk9FRohl3jE2P7MOtB7c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W8GPLzzvKRU6N3Kev9WtS4ovlpON3/Hv+1279zdF5XVMCr7EBnMlfc86OZ7MHBb2f
 HEQciTZ17p5eVbevWpppqkZ2ArnQCpbojoEJyjZJWhbfBNGk3lYra9ydJLNlV5bG3k
 QujZHghFpvdD3W3q6s6wsqmGaGTT4eFI/DvpYB4o=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:26 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:54 +0200
Message-Id: <20200420133503.18700-6-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063531_765903_DAA7B64D 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 05/14] ramips/mt7621: enable mikrotik
 platform driver
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy00LjE0IHwgMiArKwogdGFyZ2V0L2xp
bnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTUuNCAgfCAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvbXQ3NjIxL2Nv
bmZpZy00LjE0IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTQuMTQKaW5kZXgg
MmFlNmFmYjk3Zi4uNmRhM2E5OTRhOCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9t
dDc2MjEvY29uZmlnLTQuMTQKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmln
LTQuMTQKQEAgLTE1Myw2ICsxNTMsOCBAQCBDT05GSUdfTFpPX0RFQ09NUFJFU1M9eQogQ09ORklH
X01ESU9fQlVTPXkKIENPTkZJR19NRElPX0RFVklDRT15CiBDT05GSUdfTUlHUkFUSU9OPXkKK0NP
TkZJR19NSUtST1RJSz15CitDT05GSUdfTUlLUk9USUtfUkJfU1lTRlM9eQogQ09ORklHX01JUFM9
eQogQ09ORklHX01JUFNfQVNJRF9CSVRTPTgKIENPTkZJR19NSVBTX0FTSURfU0hJRlQ9MApkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTUuNCBiL3RhcmdldC9s
aW51eC9yYW1pcHMvbXQ3NjIxL2NvbmZpZy01LjQKaW5kZXggZTkxMDAzZDhkMi4uNGE5M2FiNzAy
YSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvY29uZmlnLTUuNAorKysg
Yi90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9jb25maWctNS40CkBAIC0xNzIsNiArMTcyLDgg
QEAgQ09ORklHX01ESU9fREVWSUNFPXkKIENPTkZJR19NRU1GRF9DUkVBVEU9eQogQ09ORklHX01G
RF9TWVNDT049eQogQ09ORklHX01JR1JBVElPTj15CitDT05GSUdfTUlLUk9USUs9eQorQ09ORklH
X01JS1JPVElLX1JCX1NZU0ZTPXkKIENPTkZJR19NSVBTPXkKIENPTkZJR19NSVBTX0FTSURfQklU
Uz04CiBDT05GSUdfTUlQU19BU0lEX1NISUZUPTAKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

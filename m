Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D901842A0
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 09:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTjpiyydn18KDn5lr8HDv0c4/uArayfduR33ojDebI4=; b=TlsVFEtrJealGM
	G6grrUCo1A6VxsC0mfGck+x5umg7xpJK++6+ERpKQDb+wLZxlZ3lNHH469dY6nTC176DgcmWDqIeX
	jUDjVkLT4drsy+TQODbiKTUotqmx5jpeV3X2PZVMp4+AK4IzN/bry3mdmx+W84jWJxnMyoWtIiMb7
	FEODYgYH/GLckcs7odYtuChSJy3gTbGixImgCqVqppiBbHER08nlyL1dCsdKHmsejrX8pfDiTWfmD
	ZOU6YKUVAWN87QH4gYnnpNBRMpyhLmPpmgR1uGPWYr0bfaZs5Rcou+kuiOixUalLPXyrTCMqWHCDR
	R+B4TsNKVSIZP6ZZep9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfhz-0000cw-BO; Fri, 13 Mar 2020 08:30:19 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfhn-0007sQ-9d
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 08:30:09 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 02D8ToEE016832
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 13 Mar 2020 09:29:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1584088191; bh=CwTdo+QKllMWiqiKLtcdJMgxArAN3ttxNh7aAzHCLZw=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=bdKlQnz2zerTLySVD8tZ+KHd2TAPhXmQZVwHkrxChoeyKbIQSwIPHihatMYUGt3A5
 R69Xqfg0EAMmBHrP5vI53kJXWd22xsnZjQsN/0Z5TXCYgwCIICgKC84kE6vZsVG7I+
 vN+W6II5OqdeStjfzisFvf8YNPFq5ZMcrZ9QQmhE=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jCfhW-0003Xi-0V; Fri, 13 Mar 2020 09:29:50 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: David Bauer <mail@david-bauer.net>
Organization: m
References: <20200313000739.62880-1-mail@david-bauer.net>
Date: Fri, 13 Mar 2020 09:29:49 +0100
In-Reply-To: <20200313000739.62880-1-mail@david-bauer.net> (David Bauer's
 message of "Fri, 13 Mar 2020 01:07:39 +0100")
Message-ID: <87o8t0bqte.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_013007_734905_FC243401 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use downstream ag71xx for Kernel
 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RGF2aWQgQmF1ZXIgPG1haWxAZGF2aWQtYmF1ZXIubmV0PiB3cml0ZXM6Cgo+IC0tLSBhL3Rhcmdl
dC9saW51eC9hdGg3OS9maWxlcy00LjE5L2RyaXZlcnMvbmV0L2V0aGVybmV0L2F0aGVyb3MvYWc3
MXh4L2FnNzF4eF9tYWluLmMKPiArKysgYi90YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21haW4uYwo+IEBAIC0xNTgxLDcg
KzE1ODEsNyBAQCBzdGF0aWMgaW50IGFnNzF4eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAJYWctPnN0b3BfZGVzYy0+bmV4dCA9ICh1MzIpIGFnLT5zdG9wX2Rlc2NfZG1h
Owo+ICAKPiAgCW1hY19hZGRyID0gb2ZfZ2V0X21hY19hZGRyZXNzKG5wKTsKPiAtCWlmIChtYWNf
YWRkcikKPiArCWlmIChtYWNfYWRkciAmJiAhSVNfRVJSKG1hY19hZGRyKSkKCmJpa2VzaGVkZGlu
Zy4uLiAgQnV0IGhvdyBhYm91dAoKICAgaWYgKCFJU19FUlJfT1JfTlVMTChtYWNfYWRkcikpCgo/
CgoKPiAgCQltZW1jcHkoZGV2LT5kZXZfYWRkciwgbWFjX2FkZHIsIEVUSF9BTEVOKTsKPiAgCWlm
ICghbWFjX2FkZHIgfHwgIWlzX3ZhbGlkX2V0aGVyX2FkZHIoZGV2LT5kZXZfYWRkcikpIHsKPiAg
CQlkZXZfZXJyKCZwZGV2LT5kZXYsICJpbnZhbGlkIE1BQyBhZGRyZXNzLCB1c2luZyByYW5kb20g
YWRkcmVzc1xuIik7CgoKVGhpcyBsb29rcyBvZGQgdG8gbWUuICBJZiB3ZSBuZWVkZWQgdGhhdCAh
bWFjX2FkZHIgdGVzdCBiZWZvcmUsIHRoZW4KaXQgd2lsbCBwcm9iYWJseSBoYXZlIHRvIGNoYW5n
ZSB0byAhSVNfRVJSX09SX05VTEwgYXMgd2VsbC4KCkJ1dCBkbyB3ZSByZWFsbHkgbmVlZCB0byB0
ZXN0IG1hY19hZGRyIGFnYWluPyAgZGV2IHdhcyBhbGxvY2F0ZWQgYnkKZGV2bV9hbGxvY19ldGhl
cmRldigpIGEgZmV3IGxpbmVzIHVwLCBzbyBkZXYtPmRldl9hZGRyIGlzIGd1YXJhbnRlZWQgdG8K
YmUgYWxsIHplcm9zIGlmIG9mX2dldF9tYWNfYWRkcmVzcygpIGZhaWxlZC4gIENoZWNraW5nIGZv
cgohaXNfdmFsaWRfZXRoZXJfYWRkcihkZXYtPmRldl9hZGRyKSBzaG91bGQgYmUgbW9yZSB0aGFu
IHN1ZmZpY2llbnQgaGVyZS4KCk1pY3JvIG9wdGltaXppbmcgZm9yIHRoZSAhbWFjX2FkZHIgY2Fz
ZSBkb2VzIG5vdCBtYWtlIGFueSBzZW5zZSBoZXJlCklNSE8uCgoKQmrDuHJuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

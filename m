Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C731F1075
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 08:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5xcNwe3mQirIfhExAUlTKH+sWmZ91FK6NC7PzYQP2M=; b=lSqDng5BVSgAEz
	3caaMxmKs5y4I+C9PRTAGedoVbUnWs36jTQrgmr6qQllcoPf1Szok06Jw8V2bT3TwD9s1/R1cHno+
	gZvotGzcun2KP6w74d8c6Zj7RNNN2Yox7m353CkWVQsG9SkiX+XbJcw91hnW6q6DmD8imRZhHvGU0
	Ny311v7RDPmc1ah/ybnOPHTLSbwTcn2qUx8Uf2OThHZ+qtHwSoB3aep4aEGJol1IwNDi6vqhQr8Ie
	KqeQHisw6N4/iUxIBDbA8tOAw9Ka+vN9a6G8DBkok1g0ozpcelCUMrZ6T6YZZrh2E6MV59yxAeCfF
	OavUwLuDrHHd3k5YtKkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSFv3-00047g-C1; Wed, 06 Nov 2019 07:39:57 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFuv-00046E-Uw
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 07:39:51 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA67da0e017652
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 6 Nov 2019 08:39:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1573025978; bh=TuyO+n9YEPFxbM+Hig3W8W8d3XY406rsHKQRPi+fj8w=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=e6uQST/CK2Jo2AyZAufl8u2rBebqhSd4BZR4vb5B5d7XdfMV/NjqV0dpuN+VIBxfT
 XrvFDjeXyJgZXSQP7FCCdWM4hxJEyl9CnPhQ5B/YqL3m12pJYR/+U/eo0leACZPiFM
 8ppgnQtVYGV8GeVbdDGLoAz9h553VSGc8t3OyOsI=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iSFuh-00059m-9v; Wed, 06 Nov 2019 08:39:35 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: <mail@adrianschmutzler.de>
Organization: m
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
Date: Wed, 06 Nov 2019 08:39:34 +0100
In-Reply-To: <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de> (mail's
 message of "Wed, 6 Nov 2019 00:14:28 +0100")
Message-ID: <875zjx1mix.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_233950_312454_37B12489 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: 'Mathias Kresin' <dev@kresin.me>, openwrt-devel@lists.openwrt.org,
 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 'Birger Koblitz' <mail@birger-koblitz.de>, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

PG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4gd3JpdGVzOgoKPiAgSSdtIG5vdCByZWFsbHkgY29u
dmluY2VkIHRoYXQgcmVzZXR0aW5nIGFuIFVTQiBkZXZpY2UgYnkgdG9nZ2xpbmcgaXRzCj4gIHBv
d2VyIHJlYWxseSBpcyBhIGZlYXR1cmUsIGFuZCBub3QganVzdCBhIHdvcmthcm91bmQgZm9yIGEg
ZmF1bHR5IFVTQgo+ICBkZXZpY2UuCgpBIHdvcmthcm91bmQgZm9yIGEgZmF1bHR5IFVTQiBkZXZp
Y2UgKmlzKiBhIGZlYXR1cmUgOi0pCgpUaGlzIGZlYXR1cmUgaXMgdmVyeSBpbXBvcnRhbnQgdG8g
YXQgbGVhc3Qgb25lIGdyb3VwIG9mIHVzZXJzLCBhcyBFbnJpY28KcG9pbnRzIG91dC4gTW9zdCAz
Ry80RyBtb2RlbSBmaXJtd2FyZSBpcyB1bnJlbGlhYmxlIGFuZCB1bnN0YWJsZSwgYW5kCndpbGwg
Y3Jhc2ggZnJvbSB0aW1lIHRvIHRpbWUuICBXZSBjYW4ndCBmaXggdGhhdC4gIE1vc3Qgb2YgdGhl
IHRpbWUsIHRoZQptb2RlbSB3aWxsIHJlYm9vdCBhbmQgZXZlcnl0aGluZyBpcyBmaW5lIGJ5IGl0
c2VsZi4gIEJ1dCBzb21ldGltZXMgaXQKZ2V0cyBzdHVjayBpbiBhIHN0YXRlIHdoZXJlIHdlIG5l
ZWQgdG8gdG9nZ2xlIHBvd2VyIHRvIGdldCBpdCBydW5uaW5nCmFnYWluLiAgVGhpcyBpcyBhIG1h
am9yIHByb2JsZW0gaWYgdGhlIG1vZGVtIGlzIGNvbm5lY3RlZCB0byBhbiBPcGVuV3J0CnJvdXRl
ciBpbiBhIHJlbW90ZSBsb2NhdGlvbi4gQmVpbmcgYWJsZSB0byBjb250cm9sIFVTQiBwb3J0IHBv
d2VyCnRvZ2dsaW5nIGluIHNvZnR3YXJlIGlzIGVzc2VudGlhbCBmb3Igc3VjaCBzeXN0ZW1zLgoK
SXQgZG9lcyBub3QgbWF0dGVyIHdoZXRoZXIgdGhlIG1vZGVtIGlzIGludGVybmFsbHkgb3IgZXh0
ZXJuYWxseQpjb25uZWN0ZWQsIGlmIHRoZSBPcGVuV3J0IHN5c3RlbSBpdHNlbGYgaXMgZGlmZmlj
dWx0IHRvIGFjY2Vzcy4KCgpCasO4cm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK

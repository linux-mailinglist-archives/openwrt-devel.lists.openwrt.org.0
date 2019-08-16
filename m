Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC9B9059E
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 18:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGfyZXIOWGK2S8LWBqnF93hduB4vt73or3QtgA5Tc5c=; b=XgPtpbgAjcO6Z0
	g854yxvbZA5c1YUN29nQRFSueimWF7A1ZgeDtJ6EDXOI1yXYSzZAxOD5hK9gBqzgPXdXxkN65CGtc
	c/C61QFoFPoG3Cc6leKcL9ZoD1RMu2UqEOXFPncSj4kvo+AZFK27q6IPyGaUyvymWdpbkt1w0lqUJ
	oRUnCkZRntpQuoDVSTDY/bESQa6CSk539aVbrevJNz94hJ5N4jNkwMuCL10MCotAz9LraAXGn4ukJ
	rKf1DW5NEH5peTmRdpldnlwTIPWwur7/7NmSIrJYkWp1UgcNfznyP3j+OTV8ty2T7GWmHoa0JikXz
	7qyJGrvT+TP98YwjwLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyevW-0000qu-4C; Fri, 16 Aug 2019 16:18:06 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyevM-0000qG-CT
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 16:17:58 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id x7GGHoPj013651
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Fri, 16 Aug 2019 18:17:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1565972270; bh=WpNtBjU1ywwU9JungfS9NEUgjlnlj+uiaQEtM8CkESg=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=NaRi9+FV8Rdt177E6/3vPP1yxZEbzXMsWq+B+7PKRCnwQd6qKp8TWTQlpSHDiLTbM
 UkhT24Q574fRCdF/h59DHq3h7gYy5L2CVYd7BZTjdFnEVemvyHL2qaxJK7RQb8faC2
 FEbpNn90E++hZ0ehOV1xLaqOWdMujH5gc6+ky8TU=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1hyevF-0005Wv-Kk; Fri, 16 Aug 2019 18:17:49 +0200
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: John Crispin <john@phrozen.org>
Organization: m
References: <20190816142848.14412-1-zajec5@gmail.com>
 <e684cf3e-12fb-ef97-1f9d-cf780bf7d775@phrozen.org>
Date: Fri, 16 Aug 2019 18:17:49 +0200
In-Reply-To: <e684cf3e-12fb-ef97-1f9d-cf780bf7d775@phrozen.org> (John
 Crispin's message of "Fri, 16 Aug 2019 17:01:16 +0200")
Message-ID: <87sgq184pe.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_091756_932854_5A5CC174 
X-CRM114-Status: UNSURE (   6.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH procd] system: support passing "options"
 to the "sysupgrade" ubus method
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
Cc: =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
 =?utf-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
 Jo-Philipp Wich <jo@mein.io>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPiB3cml0ZXM6Cgo+PiArCQlmb3IgKGMgPSBu
YW1lICsgc3RybGVuKHByZWZpeCk7ICpjOyBjKyspIHsKPj4gKwkJCSpjID0gdG91cHBlcigqYyk7
Cj4+ICsJCX0KPj4gKwo+Cj4gYW5kLCBtYXR0ZXIgb2YgdGF0c2UsIGJ1dCBpJ2QgZHJvcCB0aGUg
dHJhdm9sdGEgYnJhY2tldHMgb24gc2luZ2xlCj4gbGluZSBjbGF1c2VzCgpJIHRob3VnaHQgPD4g
d2VyZSAidHJhdm9sdGEgYnJhY2tldHMiLCByZWYKaHR0cDovL3d3dy5tb3JldGhpbmdzLmNvbS9m
YW4vcXVlbnRpbl90YXJhbnRpbm8vcHVscF9maWN0aW9uL3B1bHBfZmljdGlvbjE3MjAuanBnCmh0
dHA6Ly93d3cubW9yZXRoaW5ncy5jb20vZmFuL3F1ZW50aW5fdGFyYW50aW5vL3B1bHBfZmljdGlv
bi9wdWxwX2ZpY3Rpb24xNzEwLmpwZwoKCkJqw7hybi4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

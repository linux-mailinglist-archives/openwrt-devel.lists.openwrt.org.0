Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BD4F0327
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 17:38:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuNjI8wNv7BMErD0iF0cKNyOjiI1HoxZZdtWe404jnU=; b=rj1uSUniJhoFwo
	LTeXmUowYg15T5ae8ifp69khcRfeA7SJTPm56G/OWB+nJo4x6nQ5vDDDnXqKuAja/07cq7mjFrFEl
	aEkS4bjbA1aGIG+rUY08GL9cXYCVYqFi5Q4gzxOALgZjdk3/f3xWsd4Ttv9LEgC6rYrlMRfU5r9gu
	PDICdKQjn7puBfIrS2ufsx77KWlf8s3RKnYO57Q6enN0xcy4UHoBxuqzGMUrBckw8b7dggRIghhBh
	P8zqjhMHefrlMJ/EXXhOANrXEu4p3YhpLZkhgW3d3N3InR3xkamEL/JDgZEziS94IwAeK+J32Cj/S
	lTG5AAvWIchrP2hlyIwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1qZ-0004BS-7v; Tue, 05 Nov 2019 16:38:23 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1qN-0004Ai-OI
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 16:38:13 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id xA5Gc1Xp008986
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Tue, 5 Nov 2019 17:38:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1572971882; bh=Ghh20YsXfPicDTlOjPKfU6x6TvbJ8Qxc7bwJvS8RaDI=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=nEu6tApFLjbd7bNYJmACeDAWpFIDigEHnaeeoGSJifwnE/gPvVLXyTdVGzuLmNRVJ
 3SEOI22x4obcX8ExbZDRdWlSAnaqzpkeQnyIkW0MqqaJZUXRxqBuOlxuNlsSHTdeIZ
 xC00+LO7LUVYraqfW3o6BfqomqpwazxfaAx0Fozg=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1iS1qD-0004O6-1B; Tue, 05 Nov 2019 17:38:01 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Organization: m
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
Date: Tue, 05 Nov 2019 17:38:00 +0100
In-Reply-To: <20191105151202.4709-1-freifunk@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Tue, 5 Nov 2019 16:12:02 +0100")
Message-ID: <87r22m1dp3.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_083812_125059_93645AC5 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: openwrt-devel@lists.openwrt.org, Birger Koblitz <mail@birger-koblitz.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+IHdyaXRlczoK
Cj4gVGhpcyBwYXRjaCBjb252ZXJ0cyBhbGwgRFRTIGZpbGVzIHdpdGggc2V0dGluZ3MgdGhhdCBu
b3JtYWxseSBkbwo+IG5vdCBuZWVkIHVzZXIgaW50ZXJhY3Rpb24sIGUuZy4gcG93ZXIgZm9yIGV4
dGVybmFsIFVTQiBwb3J0cywgdG8KPiBncGlvX2hvZy4KCldvdWxkbid0IGl0IGJlIGJldHRlciB0
byBtYXAgdGhlc2UgYXMgZml4ZWQgcmVndWxhdG9ycz8gIFRoZW4geW91IGNvdWxkCmV2ZW50dWFs
bHkgbGluayB0aGVtIHRvIHRoZSBjb25uZWN0ZWQgcG9ydHMvY29udHJvbGxlcnMsIGFuZCBhbGxv
dyB0aGVtCnRvIGJlIGF1dG9tYXRpY2FsbHkgdHVybmVkIG9mZiB3aGVuIG5vdCBuZWVkZWQuCgoK
QmrDuHJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==

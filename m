Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCBC19453D
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 18:18:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tqdpuPApsxoZRpLQfRdiIV61Ifoq2HB8f2o4VWVgnY=; b=JfKRZGWFMGIUgm
	qc8wEVBQQLrYfhVS1Wk54lKzaNxlsxfxdjGQpj31kl1WJ8DWBNVT03jelA5wbIsXEq8NVbwPXCims
	HQ6fgKfeX0xYRMdYigvu9Ox7kH4f30b1WkrN7mViWUB/9oOgKfAXgFQ/YtTdfpzSlaVvKn1z2i7fM
	x9QF9hY5wrjwMPJwMAym2iDS0laEzXW0k9eyWSYj4rDsPCVIaAFLxZM7auoqUL0CHZ7OjxT1VGqGk
	MvdXRFoFfuMyyTc2fDPe9zGegkSGFcpgAPRN3+O02PZHdCPxxxAglvzNBJorIRbGX7Y3X7zsGqPrz
	R/3yfiQEgLb07muenajw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHW9K-00056A-SA; Thu, 26 Mar 2020 17:18:34 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHW9E-00055Z-Ac
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 17:18:30 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 02QHILD4006421
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 26 Mar 2020 18:18:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585243101; bh=ma8NHIoZc9F/pz48QfUSc6CaNOt4xCqkjVH4wFZF4Zg=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=ZdFGkT9tfcEzhVaHH1H0373PmBI2M0LZ5vCggEAZn8YvpKo5FABTCVr7WB+dRmzZ2
 J+52bKzVDZLM50SxHHHqIIUw2Q/oHjyVd8n8+5chMrWVZlsDxmX7tdG8wvbr7zpvJr
 keAmYsScjWgb+xHoNrli+MsXIxWefq/zFvmb9XWo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1jHW97-00021l-22; Thu, 26 Mar 2020 18:18:21 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Organization: m
References: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
Date: Thu, 26 Mar 2020 18:18:20 +0100
In-Reply-To: <20200326155654.48317-1-freifunk@adrianschmutzler.de> (Adrian
 Schmutzler's message of "Thu, 26 Mar 2020 16:56:54 +0100")
Message-ID: <87mu83ghlv.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_101828_930090_B94704AC 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory
 image
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QWRyaWFuIFNjaG11dHpsZXIgPGZyZWlmdW5rQGFkcmlhbnNjaG11dHpsZXIuZGU+IHdyaXRlczoK
Cj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9pbWFnZS9nZW5lcmljLXRwLWxpbmsu
bWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rCj4gaW5kZXgg
NGM5MjVjZjg1MC4uMGUyYTU2YTZkNSAxMDA2NDQKPiAtLS0gYS90YXJnZXQvbGludXgvYXRoNzkv
aW1hZ2UvZ2VuZXJpYy10cC1saW5rLm1rCj4gKysrIGIvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdl
L2dlbmVyaWMtdHAtbGluay5tawo+IEBAIC0xNjYsNyArMTY2LDcgQEAgZGVmaW5lIERldmljZS90
cGxpbmtfYXJjaGVyLWM3LXYyCj4gIAlhdGgxMGstZmlybXdhcmUtcWNhOTg4eC1jdAo+ICAgIFRQ
TElOS19IV0lEIDo9IDB4YzcwMDAwMDIKPiAgICBTVVBQT1JURURfREVWSUNFUyArPSBhcmNoZXIt
YzcKPiAtICBJTUFHRVMgKz0gZmFjdG9yeS11cy5iaW4gZmFjdG9yeS1ldS5iaW4KPiArICBJTUFH
RVMgKz0gZmFjdG9yeS10ZnRwLXVzLmJpbiBmYWN0b3J5LXRmdHAtZXUuYmluCj4gICAgSU1BR0Uv
ZmFjdG9yeS11cy5iaW4gOj0gdHBsaW5rLXYxLWltYWdlIGZhY3RvcnkgLUMgVVMKPiAgICBJTUFH
RS9mYWN0b3J5LWV1LmJpbiA6PSB0cGxpbmstdjEtaW1hZ2UgZmFjdG9yeSAtQyBFVQo+ICBlbmRl
ZgoKRm9yZ290IHRvIHVwZGF0ZSB0aGUgaW1hZ2UgZGVmaW5pdGlvbnMgaGVyZT8KCgpCasO4cm4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

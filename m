Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB9F125E3F
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 10:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzxQuaiDk4qKL6kWmg8FjxfYRZWpFI0R6GzwxKY1x04=; b=uBmibr7ERZ+5ap
	9Krocz5xwILRX+aUjH2ngoc+C5E7Cct9UcvzXmynSkk3GBFqtO8nVsMF9Cmt3WBhZOsxHArccLqQW
	ZKR8Rndqg7k2Uknn4khhVA8ymoe4A0O7LbWlPUzZWqO+6LXA/mx6UBBfkrL2G3yQ6Oy4jQfxsVdeS
	jre+vaeyV1bJZJKPCkgusD78bEvywqtjeAa2Q3EX9xJHL4uTPNy4vF1anN9steCbWNXsbOdYryLrp
	iQapf/5jIZRY76iBz68BBSAWIIDMK6GIa8qq7LGtO6IJvTi/HNd0kBgETiMfE3Z2NaNOjXDoZD1N3
	2FJJnTpBDAqLxhdSeF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsUZ-0005Y1-EE; Thu, 19 Dec 2019 09:53:11 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihsUR-0005Xe-I6
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 09:53:04 +0000
Received: from [192.168.100.126] ([83.135.172.210]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1N3KDM-1hhpy542b4-010P7G; Thu, 19 Dec 2019 10:52:52 +0100
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 jump devel <jump-pilot-devel@lists.sourceforge.net>
From: Edgar Soldin <edgar@soldin.de>
Autocrypt: addr=edgar@soldin.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <2bf3ffb2-c358-a5f0-8d13-6e9d3e0ca00e@soldin.de>
Date: Thu, 19 Dec 2019 10:52:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:c3JamhTcDkWtMwQNX3Y2XdiQImcv+xZciKhazoz69BLFFmxHb7U
 pOgxuEDCCYNgMik/YCicyOSV1r8C6Lx97Qoidnun40slXjK4hTnO9kFZx7efao5EvjaRbt6
 1CzLTor6xueF2ut7dxYgsOrb6De0uLnTNVIjreHQe7H1a5XuZXSJb+LgODkYD+Xfe7XkOJ0
 K9CXZDncS35FvFsqAshOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uQQtQ8/s2UQ=:NhaIaD+qu8Mq61l01zQaTn
 2M/iwm7RDsoyMDWLtIY2UCKr2KX80p+Td4O8AvlRuUFufwHG+dEeUJg68TsUc1tivdkH5nzwb
 ZSj4RlpuYM8QuyC4wn8FhMpb5+jAvgUPzEKFnsni9mvQvIeTW4wcqCzlO81ZZ9zoIvhh+qNwC
 Fzb7qRhhj7ArUqxkDwhIFjaccPYNnZF5Hds4TOnNYGQGN8YUyBrlJYFoIrMn/PVqqOSFE8wLN
 SI6NTKvBLR9VT1VMjxgc7Oj5Q9mag2dz/13uQTcV0k4beKAD+NO2//lMyJKxdWKkf4QjuuqYz
 IxqmLTcKBerAkYP5Ea4Wvm8G+7ew6KuUFHG10+a9Cs6hezvvNIlrLuo23T57oicr1NySK5YAl
 oTOK/JkfWWZWYUOSMYF4Lsh8RSRvAjDbZys0v8tLPBL7hxhbznVEaCnX8n7EIz+jh1RMFYOGw
 e2bHNFuIYdQ1PrXvPDVN4J5d6724hxbYMAgfcmzapQQShLi5JV5PvthabNm3uWAokNkSmIFM8
 ECXgJ8P7BL2B725BO9/icoHTLi2tNgpGOEVNvONKN1jxLRlZseM/6OvSe1RPO6qE2x3bjYCdJ
 rKfCUyQLav49819DXRnyBBZSYSSK+jwXHCMPsOtLiWw7GWBDJnAdEfsoQHxKadjgCzpAGw4a8
 rp1VcpyZhtGkY1A+I7aMU7nvCR6A7+aMwa68ojdTZkgXN0C/JNRSrOXSLEKiiokPhdjZHotLA
 ZDR3I9lYT8//78a4LqVeARxzcqYsZGeYQHOiJtS47oqCIuRcKtsTUTAbwdSdJx7M1IHKKdiFx
 v5ov/VNdzClKT0LlPPiGBF3bXFXHxALZ4JP4RDnu/zpRkYyoA1wFXePSJa6qF7hZrefDrNr9V
 zHwlj4lZLq6GH2LCui1Qop0Ox95EM0hPJ2hWA8THCjaNyVw+OzNnV2YiiZBOAbWXFGbMFIQGL
 ZNXDUNoiJPw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_015303_893587_5C5352A1 
X-CRM114-Status: UNSURE (   4.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] test
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

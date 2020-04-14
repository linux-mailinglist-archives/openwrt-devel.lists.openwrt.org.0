Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4B41A7065
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 03:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmWDVWwIQ3BjxUBjL+aZZBKjFnA5Oy6YqhkXoXixW/I=; b=rgvpCiTiS/fyqP
	POW3bNujDBudbBVyLdlDORKAMUJijUR6FKL+CA9owY0oJe0qOSAC3Nmwvf8Q+BsAtFbB/yO86JCDt
	mP2rkDAPi9diQHLcKm/4kvlUHE87EphNKYSWMdKZtPTdI5RCEoS/spI8niQ9HNEHPyHL8zWmWFWcU
	Yt2pNbMfLEccRiJBb521TkpklrevP2AQ7p7Gc++FQsjNo1RTqBNEKNWpBkRPULqbTzelECkLZAKoV
	eGDLoVXxyAg1v4SOrSyJACId923AQLyD17yZoYhKyBhJFXS22sq4HsdrDiv8g0MXUtsUdM+n8DOAD
	4YTsgRPT/h7CFm0Z/Tfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO9w8-0005V8-Ts; Tue, 14 Apr 2020 01:00:24 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO9w3-0005U4-GA
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 01:00:21 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 88E6F20008;
 Tue, 14 Apr 2020 01:00:11 +0000 (UTC)
Message-ID: <ba9c8e7def64d62010f15bae4548a92d6ecbf8cd.camel@aparcar.org>
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 15:00:08 -1000
In-Reply-To: <20200406115319.43682-1-mail@aparcar.org>
References: <20200406115319.43682-1-mail@aparcar.org>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_180019_672546_0A7BF291 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] scripts/download: add sources CDN as
 first mirror
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
Cc: jow <jow@subsignal.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Works fine locally and in my test infrastructure, worst case the CDN ever goes
offline is that it falls back to regular mirrors.

In case you set up your own feeds, the download.pl would still ask the CDN for
your self created package, what could be considered as a privacy leak. Should
this become options or at least disable-able via a option?

On Mon, 2020-04-06 at 01:53 -1000, Paul Spooren wrote:
> OpenWrt now has a CDN for sources at sources.cdn.openwrt.org which
> mirrors sources.openwrt.org.
> 
> Downloading sources outside Europe or US (mainland) could
> result in low throughput, extremely slowing down the first compilation of
> the build system.
> 
> This patch adds sources.cdn.openwrt.org as the first mirror to offer
> worldwide fast download speeds by default. If the CDN goes down for
> whatever reason, the script jumps to the next available mirror and
> downloads requested files as before (in regional varying speed).
> 
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  scripts/download.pl | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/download.pl b/scripts/download.pl
> index dd49255367..1d3ff02c5b 100755
> --- a/scripts/download.pl
> +++ b/scripts/download.pl
> @@ -258,6 +258,7 @@ foreach my $mirror (@ARGV) {
>  	}
>  }
>  
> +unshift @mirrors, 'https://sources.cdn.openwrt.org';
>  #push @mirrors, 'https://mirror1.openwrt.org';
>  push @mirrors, 'https://sources.openwrt.org';
>  push @mirrors, 'https://mirror2.openwrt.org/sources';


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

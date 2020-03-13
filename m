Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62E218483F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 14:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8YnEi7xOWMcDlTNJGUMt8jY/CSKVM9LJGnhd/PV9oT4=; b=l/ghe0wHfwBsM5SnuBMUHV9lc
	ONGDEpWQBQ8eqWJ1fleHWUancF5zUZA4EvuebkyixpnpDHGug4bdVxQCI/+OH9TuI8uAQQ4JsYz5t
	FXaHJ0hDpxlauOBHUQgDUR4S8W0225SpduEyxjdI3t4sY6qU7MQEiFLz0xS0C0i/U4avfKuIDNpyV
	Nqe+/Nk1qAjXwhl1YDfcj1yJKr9uUyyxmubfjCo/4HNXvRwincpfdTlfurApQlv+ZmXbDXMuMc9SQ
	wYtbdZvEDeb4eM+9+0yjTs544HmTkNN4VZq1e1O33le6fTLnEZu7wMuC6yoy4i0Botm/sskUNc7A+
	Dnw9d3xVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkTR-0004dn-L7; Fri, 13 Mar 2020 13:35:37 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkTD-0004ae-Le
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 13:35:26 +0000
Received: from mout-u-107.mailbox.org (mout-u-107.mailbox.org [91.198.250.252])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48f6Bw4fCpzQlG7;
 Fri, 13 Mar 2020 14:35:20 +0100 (CET)
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48f6Bw3w7gzKmhQ;
 Fri, 13 Mar 2020 14:35:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1584106518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6hON7yyhhzw+Vonuoqr6W3pVjgEkt2IQrS3VBSOUizw=;
 b=z2Rc2seUui26auAwum6GMf+Ea2FC2d5at3aSEgp28dagX2Ikj8LKk+t/ZJk4E77USmudjG
 mUISr1NOVekCKdT+VChUk41SdKsf6lMX7iaFxLdrgJwo45jdCl5LE53vhiDyUxaNUnh+Pn
 +nS+fCsUgEMzV6LNCfYgJw06P5LXT/1pdUepOeLiMx3Mc3pgLm/2HCl0c8w1N+VHRpknaw
 BGoRgWgmDkERHvfrTDMVltcdtvoxeL5ywcGnUqnBbLShFUx4C6v+A2aa/+1743vI75C3Aj
 Xa9Xest3D5Dj/yU36F5AO1V3EMufK5Kkx+dCsRK2tSj9UzNCyZ7oX3OB7nT2fQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id KgsfeSWHjBfj; Fri, 13 Mar 2020 14:35:17 +0100 (CET)
To: Adrian Schmutzler <mail@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org
References: <012301d5f89d$61b678c0$25236a40$@adrianschmutzler.de>
From: mans0n <mans0n@gorani.run>
Message-ID: <1bbad1d0-d55e-268a-38dd-bc9d32939848@gorani.run>
Date: Fri, 13 Mar 2020 22:35:07 +0900
MIME-Version: 1.0
In-Reply-To: <012301d5f89d$61b678c0$25236a40$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_063524_016650_585CE5BC 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] cyclic dependency for /lib/functions.sh and
 /lib/functions/system.sh in special case
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 2020-03-13 03:38, mail at adrianschmutzler.de (Adrian Schmutzler) wrote:
 > Hi,
 >
 > I just wanted to source /lib/functions.sh in /lib/functions/system.sh
 > (base-files package), as several functions in the latter require the 
former and
 > it's annoying (and untidy) to have to include both files in several 
places.
 >
 > However, I realized that currently /lib/functions/system.sh is sourced in
 > /lib/functions.sh, function default_postinst():
 >
 > 
https://github.com/openwrt/openwrt/blob/8df14c229c02a3b9329afc6e3ebf4f8aec5b59ed
 > /package/base-files/files/lib/functions.sh#L257
 >
 > So, currently effectively both files depend on each other in at least 
one case.
 >
 > However, in default_postinst(), it looks to me like no function from 
system.sh
 > is actually used directly, but it's merely put there as an "external 
include"
 > for the /etc/uci-defaults/* files processed there.
 >
 > I'd like to resolve this, both as I think the sourcing of 
/lib/functions.sh in
 > /lib/functions/system.sh is helpful and tidy and because I think the 
cross
 > dependency is quite undesirable.
 >
 > I see two solutions to that problem:
 >
 > 1. Remove the sourcing of /lib/functions/system.sh in 
default_postinst(). That
 > would be the tidiest way IMO, as dependencies used in a uci-default 
script
 > should just be put there. But it might break things if people relied 
on it. It
 > would be relatively easy to fix uci-default scripts in openwrt repos, but
 > downstream might complain. Still, I'd prefer this solution.

I like your first solution. It seems there's only one uci-defaults file 
in OpenWrt
repo which really uses /lib/functions/system.sh. I guess downstream 
projects can
handle it relatively easily.

And if we are going to break things, I'd also like to create something like
/lib/functions/mtd.sh and move all mtd functions to there (and rename 
system.sh
to macaddr.sh if possible). I don't feel there's no good reason to keep 
find_mtd_part()
in functions.sh and find_mtd_chardev() in system.sh.
Then we might even don't need to source /lib/functions.sh in 
/lib/functions/system.sh
at the first place. (I think /lib/functions.sh is too big to be sourced 
everywhere...)
But that would really break things heavily, so it's just my thought.

Thanks.

 >
 > 2. A second option would be to keep the include, but just move the 
function
 > default_postinst() out of /lib/functions.sh (from my perspective, it 
doesn't
 > really match there anyway) into a different library file (which?). 
This would
 > still resolve my "dependency problem".
 >
 > Any opinions?
 >
 > Best
 >
 > Adrian
 >
 >


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44EB18DF01
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 10:14:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJizHpXvp0Lw78VaeIxAa51VbokTXKeZwlcq1MwdhUM=; b=I3zoJ2VLIDcabg
	ik9jKPTzmWcFV16uteqNtqawc4YkChdjKVIMniKaJ7MUoI0ADfny44PM7PQsT/TM6ouNDUjp1XtC8
	raSOUrUryYyeTi0XahsSkZJqlzKrikow4CYdg/T9NaaJY9xcIGCT0oj11HViOh5pVRcLp3qTh/8II
	Y2NFzIAcMzdy7bAx9OJ9fhCjeQ68PCrBwLeZiwrHJyte6Oji2neIizBxoIqjB4ABfXdfI3tsq55zX
	uWCMmo2wBzzyvJeoD8sZCvxAYDIj1dL+Igzsr9ohKL1KU1YqLSrBzVh1/T0eKjEHFrk17vRGx0D/i
	tf6AgjRBCj5OJh5VUP7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFaCv-0001qy-8J; Sat, 21 Mar 2020 09:14:17 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFaCq-0001qM-7z
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 09:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584782036;
 bh=OaykcJ+zVzGH5+/3uZ97b1rklx3jQt+zyKsCNQpkAk0=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
 b=TupgAJlX2qOT1lm/lRmjiN/xe+vNRrHoqKohuCV/ZI0blm857/XjU9VpynGXHLUsy
 +O9/tt3oDxfwF3IQnuHOL1w9RHhb5D1296jfQb5kJi5PE4k1Y0EW/cjUR2K0EwPuRP
 Zespz9sj70aHYICtZn3NzvtGwlSJ0pJ++vZOOMec=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.67.54]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1McH5a-1jpjpo0JTw-00ceIB; Sat, 21
 Mar 2020 10:13:56 +0100
Date: Sat, 21 Mar 2020 10:13:54 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200321091353.GA29430@darth.lan>
Mail-Followup-To: openwrt-devel@lists.openwrt.org,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Stijn Tintel <stijn@linux-ipv6.be>
MIME-Version: 1.0
Content-Disposition: inline
X-Provags-ID: V03:K1:UfgqYUFymG6aw1dhYCK9jNoPY8Znl7FRftEdDqbfrqs3QC7jgDN
 h2ua9GhLcQXlQA+QSuvmSpjyulZFXPFH+7oaCi8lY2Inp/9W43qZ4z3iPGpes1zahniUT60
 ItzPJc6KUJO0rdcmLsZZJoJFJzKccaVV495MWYDfSocke8hxn5i9SyMxRXFE7eq+ATb413f
 CmdX2+pKqKWShxvAzVXCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6mnfzI2/TCo=:raidZWLDT7qkNQzI6aogmM
 PdFwpXbyWQgXE/ne3Bblmc66cwavOwaaP6iaNfvtAncFdX8EkRqJxdCAOxQ3+tCXZ6cpaLBhK
 DuDNFYyC4cwMZJrhiMeSiPq7cimpscFy+1t7/BWaxS5LlnNsSv07ZpDwB3c5lv4PB2rkr2WtL
 BmleO5WHMtYIlCKB6VRGVeTrVJlHMKDd4vlEjtWn2OqrpdL+p22NINes9mxCwtsVrj9g7IVt6
 RHaJesAZzy3iRZYS7i+x+Bfp/PqbzRui4UvpoI5S5IFQL1ndHtoomqPizqhcGiLFB41nLKLsE
 4N8FqlNGO9f6uTbao7dNtlNEzXp/6ArWyh5T6s1ywE0YT2XBy121bLz5dcp5MPAHYGTiJiNq4
 dCAUULcZdmlAY6eAfG9CEXhMDVGypo/AX364cuPKLi73G3RsXgs6YOu+f1I6noaxNGXVT/D3j
 V8PAZUh92MPR7IkkYzYKWYrdNngB6hc7GDsLmdLJuM7AkndjoxebkACgKxmCIUxXkKQ21uFiN
 rlwGcg6rZAZqbd2IaEmVNPTqJwt2CwwNBeDi3Ehv9J+m5S5/vQKkIfknVVJ8DscESitQrQbHF
 /Tw7yVv0g2ZyTFmNP6j6UKP8X6eyE2X8Ar7IuRKLfVfvmAJNihKksGwOfwuWp/XWajej5k6IN
 d3Y22/zhYSGCocL+jcPY+7EqSeaEtt5wrKRe5CkuFcAeTzV5b/EKXAlZJAWTLjbcMVNpN638A
 buMaKd1arYu0enP9HbEbXlnZPgmg8N4G9D6EPQ/vGMebgIGqHQn8RYSq99tYnagBQKZM9jPm2
 qa7U1xqHpH0w4jBDRqdqNBho7GNwc5xy/SsnWInKI+qILDHdfH9533IlhPaHZdmcZO/el4LFx
 Sjw2TNyvPG41PDQpj+r+3RfprqsThEOtUdl3po0+4Z+kP0ZgBvSzP+QlXOLd6bC9nOnOCRQTg
 ZCWPx6ES5TPcesNrZvQMBUGiB9lXZZo0G0Q398+bTvFMFFyKbtG531DX2KCzQ5HUBG3Yikecg
 VeEVk+P3P+FlV/XeuxgZEVYFPktgKgIXJEz0l65qE2DXaF9Z8xKG3qZS42rblzFBiW2alzIoG
 fH4b+IxWqqyqxJEAe6SztkK0sxV5UHRbA9WByGc3KXRF5PS5cZIzki54diG11aIlHGCuaW0SH
 DHqJ8eZxTYEWLpXKgm+Mya9VudVdd40CRhSRN/Xu2lAKk6m4PZ5hxCa7WiuY/qcbZ+9c0b8DM
 EuiRfCI7Bv4+gPvDC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_021412_621546_02CFCE2A 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sebastian_ml[at]gmx.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Strongswan compile fails since connmark related
 commits in OpenWrt
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

strongswan fails to compile since many weeks:

In file included from /builder/shared-workdir/build/sdk/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/linux/netfilter/xt_CONNMARK.h:5,
                 from connmark_listener.c:30:
/builder/shared-workdir/build/sdk/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/linux/netfilter/xt_connmark.h:23:2: error: enumerator value for 'XT_CONNMARK_VALUE' is not an integer constant
  XT_CONNMARK_VALUE = BIT(0),
  ^~~~~~~~~~~~~~~~~
/builder/shared-workdir/build/sdk/staging_dir/toolchain-aarch64_cortex-a53_gcc-8.4.0_musl/include/linux/netfilter/xt_connmark.h:25:1: error: enumerator value for 'XT_CONNMARK_DSCP' is not an integer constant
 };
 ^

Full log example:

https://downloads.openwrt.org/snapshots/faillogs/aarch64_cortex-a53/packages/strongswan/compile.txt

I think that this build failure is related to one of the following commits:

https://github.com/openwrt/openwrt/commit/e481df07fa6599e18a0570acb4dadabc56299b7b
https://github.com/openwrt/openwrt/commit/a1cfe0dcbb242ab440af6801e223ebde540ed90f

(probably the second one)

Maybe anybody can take a look at this?

If you want me to raise an issue in Flyspray let me know.

Kind regards,
Seb

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

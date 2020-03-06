Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365C217BB07
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 11:59:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MpKtDXcy0LDUVWyhgjqCiQFvQDM4+fs6W2N17iDxzjg=; b=p4PyzBaTrD6e6+
	ZE6uYCE+foya4s6o0vywMUYPYTPIW7o7CEwrLN8JNzuvg8EQGMspuAv8MFfRffqsk6Uambd9D/9MZ
	2E+c+hqMUpMj/iSVmAIJYxOhQbWksC8sHdl1uhW6LNQOP6mCYsT2veUW+wgeObCojnjRw2DvHMvLf
	3dL8OkTiXbIZ0YSyxiGJiosPwWVr5HU5WMMwsB60GzaBb9Jvvr+wB9+wYDPOsEztDDotpt4P4hl7z
	NLR6PboWk214fbs8Rf60HVEDbDC//joFsYmiS89w2M/skq14o/Mb0iP+4fKMzvrgofYuvk32Uz07+
	Gby/4km+bQ5JpVF2qbsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAhV-0002dI-QF; Fri, 06 Mar 2020 10:59:29 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAhL-0002cZ-66
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 10:59:21 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1jAAhF-0001FJ-PS
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 11:59:13 +0100
Date: Fri, 6 Mar 2020 11:59:12 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200306105912.GA3750892@lud.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_025919_404760_DEF48607 
X-CRM114-Status: UNSURE (   4.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] OpenWrt 19.07.2 service release
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

The OpenWrt community is proud to announce the second service release of
OpenWrt 19.07. OpenWrt 19.07.2 focuses on security and device support. It
notably fixes a security issue in ppp and improves support for migrating
devices from ar71xx to ath79.

- ----

Selected highlights of this service release are:

 * fix a ppp buffer overflow vulnerability (CVE-2020-8597)
 * fix a libubox regression in 19.07.1 that caused umdns to stop working 
 * update linux kernel from 4.14.167 to 4.14.171
 * improve reliability of uhttpd handling of HTTPS requests under heavy load
 * device support fixes and improvements

Additional release notes are available at 
https://openwrt.org/releases/19.07/notes-19.07.2

For a detailed list of all changes since 19.07.1, refer to
https://openwrt.org/releases/19.07/changelog-19.07.2

- ----

For latest information about the 19.07 series, refer to the wiki at:
https://openwrt.org/releases/19.07/

To download the v19.07.2 images, navigate to:
https://downloads.openwrt.org/releases/19.07.2/

As always, a big thank you goes to all our active package maintainers,
testers, documenters, and supporters.

Have fun!

The OpenWrt Community

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl5iLQAACgkQvgHsIqBO
LkaEAQ/+P2X1v6/2dozMfzGlZCo6YNQzfq0eSwdICx04Qm7WRC8yCYM4YGTC2l3w
02Y6kITgDyLwK+kyMU12sPEY03Knyi4oPyJN5UH2RQOIdM7GLvMwLrhFOruCpF0t
iISdl4rANvxcRTKZp9TlRidP5D/W/eNma2mH0pNMp6BxYP1IOw2K0JdN5wqZJpg3
QijpWfAIoxoBKsSYbnDfd8n8rTSXNfcnw6TWQzvtxmm5gQ6fgKQxnBgNyweNcbrl
gZkbtWUT5Wlk7UsTzt041vlIRcuEupoRRQ4E5+ffi5lzEGguO0EX3MJ7dFZMruaa
k/HwKHpPC65ycJNpNtV3sOJtBqC9hpqNDUPsMS+89bWjkWg3+DkDN/PnUDmZyGEg
kTandi11rWVN486//1t7cg+22BNvGNhoF4PL3EOTURAdpe8IiY6tm/Af/SHSPWxr
G4Kr4iqUOvf4lScd4ebnQ3B2wvQUMrLEop9FcgCOckD5sTP2zJJNCWkbI9ysgdtf
GpcsQnPLNZnm63dVcPs3qExEZxPnTeCcNgduVptnfF9wyxrbgBYH5afz5eKdaAo5
QdeEAjLcg2wgjX8tRF7788wwv2HCZWp7MjfZSW3BcUQLKgUPylKo1/bs5iCQ3EN/
t93quy8DBKiaEvjGhopsU6xH02uEX4upVk1Q4IdeiwaORYQNjq0=
=i/8f
-----END PGP SIGNATURE-----

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

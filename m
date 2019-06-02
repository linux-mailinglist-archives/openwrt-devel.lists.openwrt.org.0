Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F714323D7
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 18:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:In-Reply-To:References:To:
	From:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tZ3YMMt3RXP5QdHhrnKl1gfuFtukDlrfW8Bqz9bIEHc=; b=J43XnTUKtYzQw7LTdNuW42ocC
	UKFZxKf3AnDZXG4fyZmQvfGXO6A2+xMJZIR0gkANFvNXZu/vLbcnk4Osuvpy4Uz4QqS9XWZzRuKMW
	KME9X4EBiHQKqBlRXugraNQHYOfAsUmDAJ3KG1Ht62Os8hiQ/kZbzQIt6UU3GjUf9BgsGage7epQ9
	5hoFVqycllhoGmVB719lWPQU0kfEIutlF78k/0kz6dcvTVnOPboBn7lpfbKw7iiav+d8+6xN4MLGl
	VprjqGpxLjwCCAKJBT3kGc4ixP1n6ZdxNZRwS/B8zkVIaPWwbgPXSb4aUbCUDfYHFUkTgZRLsAKAs
	P58Ql6MDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXTOv-0000WU-A1; Sun, 02 Jun 2019 16:32:05 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXTOo-0000W6-6n
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 16:32:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 0A719C507A;
 Sun,  2 Jun 2019 16:31:55 +0000 (UTC)
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27600DbqAjrW; Sun,  2 Jun 2019 16:31:55 +0000 (UTC)
Received: from twonky7 (pool-71-184-94-200.bstnma.fios.verizon.net
 [71.184.94.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 8E375C50CC;
 Sun,  2 Jun 2019 16:31:49 +0000 (UTC)
Message-ID: <8A923593DF01485AA035C5AB2F77EAC7@fortmeadow.com>
From: "Ted Hess" <owrt@kitschensync.net>
To: "Paul Spooren" <mail@aparcar.org>,
	<openwrt-devel@lists.openwrt.org>
References: <836bcdbe-2217-e9e4-5926-5bea19db02d7@aparcar.org>
In-Reply-To: <836bcdbe-2217-e9e4-5926-5bea19db02d7@aparcar.org>
Date: Sun, 2 Jun 2019 12:31:38 -0400
Organization: OpenWrt
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_093158_371694_E6BA2A62 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 STOX_REPLY_TYPE        No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [64.68.200.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [RFC] additional Docker images and CI testing
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 Ted Hess <thess@kitschensync.net>, Rosen Penev <rosenp@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Paul -

This sounds like a good idea - would giving you commit 
access to our
docker hub [0] repo be of any help? Is there anything else I 
could help with?

I don't know if you saw this posting I made last year about 
a simple
use of our Docker image for test buiilds. Issue #7735 [1]. I 
had pinned it
but for some reason @heil un-pinned it and I left it be.

/ted

[0]: https://hub.docker.com/u/openwrtorg
[1]: https://github.com/openwrt/packages/issues/7735


-----Original Message----- 
From: Paul Spooren
Sent: Saturday, June 01, 2019 10:26 AM
To: openwrt-devel@lists.openwrt.org
Cc: Etienne Champetier ; Ted Hess ; Rosen Penev
Subject: [OpenWrt-Devel] [RFC] additional Docker images and 
CI testing

Hi all,

currently OpenWrt only offers a very basic Docker image[0] 
for testing
of the packages.git repo. The image is not directly usable 
as the CI
does most of the work, like setting up the SDK and adding 
feeds[1]. I'd
like to propose two additional images and added CI test 
examples for
illustration, `openwrt` and `openwrt-sdk`

## openwrt:x86-64

Now that OpenWrt can run within Docker containers[2] (thanks 
@mikma,
@dangowrt and @ynezz) it's possible for local or CI tests:

* Running the image locally:

    docker run --rm -it aparcar/openwrt:x86-64

* Test example via CircleCI

Checks if procd starts basic services[3].

The container image is created via a config.yml similar to 
the one from
packages.git[4].

## openwrt-sdk:x86-64

The OpenWrt SDK in a Docker container, also usable for local 
building or CI:

* Using the SDK locally

    docker run --rm -v ./bin/:/sdk/bin -it 
aparcar/openwrt-sdk:x86-64
    # within the Docker container
    ./scripts/feeds update base
    make defconfig
    ./scripts/feeds install firewall
    make package/firewall/{clean,compile} -j$(nproc)

The compiled output is found in ./bin/

* Test example via CircleCI

Compiles firewall package[5].

The openwrt-sdk container image is also created via CI[6].

All examples are based on this[7] repo and the *interesting* 
branches are:

* openwrt
* openwrt-test
* openwrt-sdk
* openwrt-sdk-test

I'd be happy if OpenWrt offers OS, SDK and ImageBuilder 
container images
in the future. Currently only the x86/64 target is 
supported, however
it'd be easy to support all (popular) targets via tags.

Eventually we could use this to develop test cases for 
OpenWrt specific
tools like netifd, procd, ubus, firewall3, etc...

Best,
Paul

[0]: https://hub.docker.com/r/openwrtorg/packages-cci
[1]:
https://git.openwrt.org/?p=feed/packages.git;a=blob;f=.circleci/config.yml;h=02a87146d91f19638bfbfc1fbc46913256cf358d;hb=refs/heads/master
[2]:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=6a92eb5b382860017fd00cd05350a648c4a4ac56
[3]: 
https://circleci.com/gh/aparcar/openwrt-ci-test/53#config/containers/0
[4]: 
https://circleci.com/gh/aparcar/openwrt-ci-test/41#config/containers/0
[5]: 
https://circleci.com/gh/aparcar/openwrt-ci-test/45#config/containers/0
[6]: 
https://circleci.com/gh/aparcar/openwrt-ci-test/46#config/containers/0
[7]: https://github.com/aparcar/openwrt-ci-test



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

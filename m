Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844C96F89B
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 06:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=12vSej3UG0qo+xQNhYhMsuP4VuT3307t+jyWyNPxUDM=; b=to2eL0LUlSfxisfelEkGmr9j2
	+e5vR2uvvmPCp8SYNb8tchvoU33Uiw8Q/FR3fZ6WGAKc08aTv1V2W0QedpIoQP6cV1KlFOJc1LqY8
	RyfiyUcam1/yI/mztMMDCVfDzlxKRmZbL3lAF7/ci1S9ZbyXEDa143VSbprl28bixgoKKIh/cEdB+
	sIFtuQktys2Tuk8NbaGEOOrrPqfR8FiuL1IHM23abphESQ4f1TuGsp5/vAbQizeJuS0qq/o2jNdOu
	LlzzEgeaoyDcAJX0NZuy8agA/Ej9hPDgSj0fqGUO55Fozmqf6aUsjwzm8sv1trN7JATlCNlPATM8G
	iSZog8wSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQCQ-0004G6-7d; Mon, 22 Jul 2019 04:45:22 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQC0-0004Fl-79
 for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 04:44:57 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 40BAE2378C
 for <openwrt-devel@lists.openwrt.org>; Sun, 21 Jul 2019 21:44:25 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <a84dbac4-32fd-5519-6d9e-c6196b5c7a51@allycomm.com>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <8a21f8f9-310c-d146-02a4-85f390bbe28d@allycomm.com>
Date: Sun, 21 Jul 2019 21:44:24 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a84dbac4-32fd-5519-6d9e-c6196b5c7a51@allycomm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_214456_264934_A8B1643E 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] "mac80211: Update to version 5.2-rc7" breaks
 batman-adv
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
Content-Type: multipart/mixed; boundary="===============6156252915926823682=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6156252915926823682==
Content-Type: multipart/alternative;
 boundary="------------0F2086700E11679CA17F9835"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0F2086700E11679CA17F9835
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 7/21/19 4:16 PM, Jeff Kletsky wrote:
>
> git bisect suggests
>
> commit 0b2c42ced2 (HEAD, refs/bisect/bad)
>
>     mac80211: Update to version 5.2-rc7
>
> as the problem behind the failure to compile batman-adv on July 21, 
> 2019 and perhaps prior
>
> See, for example 
> http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt
>
> /builder/shared-workdir/build/sdk/build_dir/target-mips_24kc_musl/linux-ath79_generic/batman-adv-2019.2/net/batman-adv/netlink.c:1347:4: error: 'const struct backport_genl_ops' has no member named 'policy'
>     .policy = batadv_netlink_policy,
>      ^~~~~~
>
>
> Same problem observed locally on ath79 and on ipq40xx
>
> Nothing obvious in the patch itself, but building at d616b2c906 
> resolves the issue for both ipq40xx and ath79 builds
>
>

Looks like the likely (upstream) event that triggered this was

(Linux) commit 3b0f31f2b8c9
Author: Johannes Berg <johannes.berg@intel.com>
Date:   Thu Mar 21 22:51:02 2019 +0100

     genetlink: make policy common to family


which moves .policy off where "current" batman-adv is expecting it.

The backport tar ball does contain backport-include/net/genetlink.h 
which seems to be picked up inappropriately for batman-adv, or there is 
a patch missing for batman-adv (commit 3b0f31f2b8c9 does modify it), or ...

I haven't quite figured out how the backports work, so don't yet know 
the root cause and "best" solution.


Jeff


See also 
https://forum.openwrt.org/t/batman-adv-build-failure-master-2019-07-21/41205


--------------0F2086700E11679CA17F9835
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/21/19 4:16 PM, Jeff Kletsky wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a84dbac4-32fd-5519-6d9e-c6196b5c7a51@allycomm.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>git bisect suggests </p>
      <p>commit 0b2c42ced2 (HEAD, refs/bisect/bad)<br>
        <br>
            mac80211: Update to version 5.2-rc7</p>
      <p>as the problem behind the failure to compile batman-adv on July
        21, 2019 and perhaps prior<br>
      </p>
      <p>See, for example
        <a class="moz-txt-link-freetext"
href="http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt"
          moz-do-not-send="true">http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt</a></p>
      <pre style="color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; overflow-wrap: break-word; white-space: pre-wrap;">/builder/shared-workdir/build/sdk/build_dir/target-mips_24kc_musl/linux-ath79_generic/batman-adv-2019.2/net/batman-adv/netlink.c:1347:4: error: 'const struct backport_genl_ops' has no member named 'policy'
   .policy = batadv_netlink_policy,
    ^~~~~~
</pre>
      <p><br>
      </p>
      <p>Same problem observed locally on ath79 and on ipq40xx</p>
      <p>Nothing obvious in the patch itself, but building at d616b2c906
        resolves the issue for both ipq40xx and ath79 builds</p>
      <p><br>
      </p>
    </blockquote>
    <p><br>
    </p>
    <p>Looks like the likely (upstream) event that triggered this was<br>
    </p>
    (Linux) commit 3b0f31f2b8c9<br>
    Author: Johannes Berg <a class="moz-txt-link-rfc2396E" href="mailto:johannes.berg@intel.com">&lt;johannes.berg@intel.com&gt;</a><br>
    Date:   Thu Mar 21 22:51:02 2019 +0100<br>
    <br>
    <p>    genetlink: make policy common to family</p>
    <p><br>
    </p>
    <p>which moves .policy off where "current" batman-adv is expecting
      it.</p>
    <p>The backport tar ball does contain
      backport-include/net/genetlink.h which seems to be picked up
      inappropriately for batman-adv, or there is a patch missing for
      batman-adv (commit 3b0f31f2b8c9 does modify it), or ...</p>
    <p>I haven't quite figured out how the backports work, so don't yet
      know the root cause and "best" solution.</p>
    <p><br>
    </p>
    <p>Jeff</p>
    <p><br>
    </p>
    <p>See also
<a class="moz-txt-link-freetext" href="https://forum.openwrt.org/t/batman-adv-build-failure-master-2019-07-21/41205">https://forum.openwrt.org/t/batman-adv-build-failure-master-2019-07-21/41205</a><br>
    </p>
  </body>
</html>

--------------0F2086700E11679CA17F9835--


--===============6156252915926823682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6156252915926823682==--


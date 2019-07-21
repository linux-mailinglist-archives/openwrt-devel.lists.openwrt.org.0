Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFC76F69D
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 01:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=my5hj1WXpNpVNn8x7/Fr/nm3lHEbn4B5FG133QWSj1A=; b=GqR
	yo0TZqfpHNvtOnjFYU/c/oAvgHdGjaFDle2SOEavSa0sMPRdou1++9QuQp4c0SwdUHJrGe6e68DhD
	/iRC7MsG7cdZkWMRD/Ym7YadYDvUHwXUyWzOE3bkVHAIKPOg8PatfN256Ind3pIbD/J4K5NYMq3c0
	HfSaI6u3/w1PDsdDbdgKREy56zIvL1yMASOIYFsRoGPb4nfSwTemF2sQ7MenLx++BkcoD+dSoeUHq
	ZREgWccrzQkRHi7w2kI7zm7OrtQ4AmgrlkEHbFpKv/KSfIZejsDYKTAw2qNNHttrVvotl3kC67b3S
	2BYwsJguhmnFZEta6BlNHqHGn03F6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpL4n-0001EL-Ef; Sun, 21 Jul 2019 23:17:09 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpL4V-00015P-0z
 for openwrt-devel@lists.openwrt.org; Sun, 21 Jul 2019 23:16:52 +0000
Received: from ubuntu.pn.wagsky.com (c-69-181-42-248.hsd1.ca.comcast.net
 [69.181.42.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 2632F236FA
 for <openwrt-devel@lists.openwrt.org>; Sun, 21 Jul 2019 16:16:16 -0700 (PDT)
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <a84dbac4-32fd-5519-6d9e-c6196b5c7a51@allycomm.com>
Date: Sun, 21 Jul 2019 16:16:15 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_161651_074226_879FBB15 
X-CRM114-Status: UNSURE (   2.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 2.7 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
Subject: [OpenWrt-Devel] "mac80211: Update to version 5.2-rc7" breaks
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
Content-Type: multipart/mixed; boundary="===============6283404855721813821=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============6283404855721813821==
Content-Type: multipart/alternative;
 boundary="------------D65DE8CEFEF60D0D0FD848D0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------D65DE8CEFEF60D0D0FD848D0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

git bisect suggests

commit 0b2c42ced2 (HEAD, refs/bisect/bad)

     mac80211: Update to version 5.2-rc7

as the problem behind the failure to compile batman-adv on July 21, 2019 
and perhaps prior

See, for example 
http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt

/builder/shared-workdir/build/sdk/build_dir/target-mips_24kc_musl/linux-ath79_generic/batman-adv-2019.2/net/batman-adv/netlink.c:1347:4: error: 'const struct backport_genl_ops' has no member named 'policy'
    .policy = batadv_netlink_policy,
     ^~~~~~


Same problem observed locally on ath79 and on ipq40xx

Nothing obvious in the patch itself, but building at d616b2c906 resolves 
the issue for both ipq40xx and ath79 builds


Jeff




--------------D65DE8CEFEF60D0D0FD848D0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>git bisect suggests </p>
    <p>commit 0b2c42ced2 (HEAD, refs/bisect/bad)<br>
      <br>
          mac80211: Update to version 5.2-rc7</p>
    <p>as the problem behind the failure to compile batman-adv on July
      21, 2019 and perhaps prior<br>
    </p>
    <p>See, for example
<a class="moz-txt-link-freetext" href="http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt">http://downloads.openwrt.org/snapshots/faillogs/mips_24kc/routing/batman-adv/compile.txt</a></p>
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
    <p>Jeff</p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------D65DE8CEFEF60D0D0FD848D0--


--===============6283404855721813821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6283404855721813821==--


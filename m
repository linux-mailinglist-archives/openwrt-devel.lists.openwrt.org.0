Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671E01A5279
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 16:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gMMQ4bHRfIyfxEqkgCeeyQrfuTA7NSwE5f6tDBLSaIQ=; b=Nda
	GLkei+ElmecfLbiVznvcg9kwWH58CS5GkbInD8fgTZig9Vb1Uy/oXNjkwvUKP+FDTm/dauEw38SY+
	zy9xtcB8+7nZQ/y8OZGV/P49XB1WAvNBBUrZZ89RWVDL4K2YhloAdddIzSmJvvIZB1aFx3QLe9o5H
	IGg6VMFcs9PxoeJzz/1yoWNCfKcdqL2taht5m5hTdqoZb6gLrgG5oCVlH0ulib9E0ry8Vz78yYO+i
	HyHPnkIUyz6PEZDhcfysO356CFBA+qFjV1PKy8fHz6OOfP1X3XlN1jRBzO3sadXtjzJo+tZPXY5PI
	T4pdHyp7BYXXhXeIVSrpOVUHMJ7VQgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNGvS-0003rT-0o; Sat, 11 Apr 2020 14:16:02 +0000
Received: from meesny.iki.fi ([195.140.195.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNGvK-0003qy-Ck
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 14:15:56 +0000
Received: from [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66]
 (dtckwryd5vgmmkld-q5xy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id D19F02017A;
 Sat, 11 Apr 2020 17:07:08 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586614028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=jvpLk50hmanFGNsbT+Wt/TNVW2eBBBpUWuFi9Wqt1CQ=;
 b=TZV1G74wn+LRocDVUxSbNX/X98V/UJrRzF/EjYB/QEKWWFg5vMk07drHEoSpLG9Okey+nW
 5RftlfVDfjcfa7o7wMhZRm8anyoYc07BkdpnXBBXpedemuMFVj5HNrUuAHy4tg9Tdmz14v
 yaz4dY4RfLEzt06OsUWeCnRs283ZKno=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
Date: Sat, 11 Apr 2020 17:07:10 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586614028;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=jvpLk50hmanFGNsbT+Wt/TNVW2eBBBpUWuFi9Wqt1CQ=;
 b=jZCLDkaK/aVqlQoDXBrNqwvbTqawC97UPlAD97q5ax8RRs9umq5tUNZT/PXSX2auZwk7K9
 HOn0+LemZOUoOIOY2g+Fxyl081fli/2tZX8jXC/wBS5a9/xQy14w6KTwqQ5AK5O/dECysL
 EUcFBc1rbh4xyQ1rzoXpkD0JfogkQqY=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586614028; a=rsa-sha256; cv=none;
 b=Y6p6Y7F3LQPaSGy4CCHwKrcxFdljYXDYef9oaWdE6WYeOliCQBrMQDaDE3kXOyjlKCKinA
 ZyFWh2IRw/GhY0TfTwqLwvrO6VzBDkRw7JPk0ttXOlR6KkepADlGbJohua4rS3utOuEXog
 REumhS3vlONEv6IxHQbxaFFmnbOKflA=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_071554_606086_1A8B405F 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Phase2 packages buildbot has failed since the
 kconfig changes
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
Cc: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, Jo-Philipp Wich <jo@mein.io>
Content-Type: multipart/mixed; boundary="===============0494633600269291686=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============0494633600269291686==
Content-Type: multipart/alternative;
 boundary="------------D87754B86910ACB466E43976"

This is a multi-part message in MIME format.
--------------D87754B86910ACB466E43976
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Looks like the recent kconfig changes broke the whole packages buildbot.

(For some weird reason, the arc targets succeed, but all others fail 
miserably...  )


http://buildbot.openwrt.org/master/packages/grid

http://buildbot.openwrt.org/master/packages/one_line_per_build


Some of errors in the logs are possibly related to the TARGET_MULTI_PROFILE 
error preventing some default packages, and for that bug there is already a 
proposed patch.

But most errors seem to be related to recursive errors inside the rather 
complex mac80211 wifi driver collection. I have a hunch that for buildbot the 
"treat recursive dependencies as warnings instead of errors" option (from 
3204430e3 ) should be activated in the config binary, or alternatively some 
major work for re-organising the mac80211 submodule dependencies needs to be 
done.

Example:

http://buildbot.openwrt.org/master/packages/builders/mips_24kc/builds/219/steps/compile/logs/stdio



Config-build.in:10377:error: recursive dependency detected! 
Config-build.in:10377: symbol PACKAGE_kmod-cfg80211 depends on 
PACKAGE_kmod-cfg80211 For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10273:error: recursive dependency 
detected! Config-build.in:10273: symbol PACKAGE_kmod-b43 depends on 
PACKAGE_kmod-b43 For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" tmp/.config-package.in:10656:error: recursive 
dependency detected! tmp/.config-package.in:10656: symbol 
PACKAGE_kmod-acx-mac80211 depends on PACKAGE_kmod-acx-mac80211 For a 
resolution refer to Documentation/kbuild/kconfig-language.rst subsection 
"Kconfig recursive dependency limitations" Config-build.in:10665:error: 
recursive dependency detected! Config-build.in:10665: symbol 
PACKAGE_kmod-wl18xx depends on PACKAGE_kmod-wl18xx For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" tmp/.config-package.in:11992:error: recursive 
dependency detected! tmp/.config-package.in:11992: symbol 
PACKAGE_kmod-mwlwifi depends on PACKAGE_kmod-mwlwifi For a resolution refer 
to Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:8941:error: recursive dependency 
detected! Config-build.in:8941: symbol PACKAGE_kmod-batman-adv depends on 
PACKAGE_kmod-batman-adv For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10501:error: recursive dependency 
detected! Config-build.in:10501: symbol PACKAGE_kmod-mwifiex-sdio depends on 
PACKAGE_kmod-mwifiex-sdio For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10545:error: recursive dependency 
detected! Config-build.in:10545: symbol PACKAGE_kmod-rt2400-pci depends on 
PACKAGE_kmod-rt2400-pci For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10425:error: recursive dependency 
detected! Config-build.in:10425: symbol PACKAGE_kmod-mac80211 depends on 
PACKAGE_kmod-mac80211 For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10229:error: recursive dependency 
detected! Config-build.in:10229: symbol PACKAGE_kmod-ath10k-ct-smallbuffers 
depends on PACKAGE_kmod-ath10k-ct-smallbuffers For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations" Config-build.in:10269:error: recursive dependency 
detected! Config-build.in:10269: symbol PACKAGE_kmod-ath9k-htc depends on 
PACKAGE_kmod-ath9k-htc For a resolution refer to 
Documentation/kbuild/kconfig-language.rst subsection "Kconfig recursive 
dependency limitations"


--------------D87754B86910ACB466E43976
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Looks like the recent kconfig changes broke the whole packages
      buildbot.</p>
    <p>(For some weird reason, the arc targets succeed, but all others
      fail miserably...  )</p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="http://buildbot.openwrt.org/master/packages/grid">http://buildbot.openwrt.org/master/packages/grid</a><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="http://buildbot.openwrt.org/master/packages/one_line_per_build">http://buildbot.openwrt.org/master/packages/one_line_per_build</a></p>
    <p><br>
    </p>
    <p>Some of errors in the logs are possibly related to the
      TARGET_MULTI_PROFILE error preventing some default packages, and
      for that bug there is already a proposed patch.</p>
    <p>But most errors seem to be related to recursive errors inside the
      rather complex mac80211 wifi driver collection. I have a hunch
      that for buildbot the "treat recursive dependencies as warnings
      instead of errors" option (from 3204430e3 ) should be activated in
      the config binary, or alternatively some major work for
      re-organising the mac80211 submodule dependencies needs to be
      done.<br>
    </p>
    <p>Example:<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="http://buildbot.openwrt.org/master/packages/builders/mips_24kc/builds/219/steps/compile/logs/stdio">http://buildbot.openwrt.org/master/packages/builders/mips_24kc/builds/219/steps/compile/logs/stdio</a></p>
    <p><br>
    </p>
    <p><br>
    </p>
    <pre><span class="stderr">Config-build.in:10377:error: recursive dependency detected!
Config-build.in:10377:	symbol PACKAGE_kmod-cfg80211 depends on PACKAGE_kmod-cfg80211
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10273:error: recursive dependency detected!
Config-build.in:10273:	symbol PACKAGE_kmod-b43 depends on PACKAGE_kmod-b43
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

tmp/.config-package.in:10656:error: recursive dependency detected!
tmp/.config-package.in:10656:	symbol PACKAGE_kmod-acx-mac80211 depends on PACKAGE_kmod-acx-mac80211
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10665:error: recursive dependency detected!
Config-build.in:10665:	symbol PACKAGE_kmod-wl18xx depends on PACKAGE_kmod-wl18xx
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

tmp/.config-package.in:11992:error: recursive dependency detected!
tmp/.config-package.in:11992:	symbol PACKAGE_kmod-mwlwifi depends on PACKAGE_kmod-mwlwifi
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:8941:error: recursive dependency detected!
Config-build.in:8941:	symbol PACKAGE_kmod-batman-adv depends on PACKAGE_kmod-batman-adv
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10501:error: recursive dependency detected!
Config-build.in:10501:	symbol PACKAGE_kmod-mwifiex-sdio depends on PACKAGE_kmod-mwifiex-sdio
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10545:error: recursive dependency detected!
Config-build.in:10545:	symbol PACKAGE_kmod-rt2400-pci depends on PACKAGE_kmod-rt2400-pci
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10425:error: recursive dependency detected!
Config-build.in:10425:	symbol PACKAGE_kmod-mac80211 depends on PACKAGE_kmod-mac80211
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10229:error: recursive dependency detected!
Config-build.in:10229:	symbol PACKAGE_kmod-ath10k-ct-smallbuffers depends on PACKAGE_kmod-ath10k-ct-smallbuffers
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"

Config-build.in:10269:error: recursive dependency detected!
Config-build.in:10269:	symbol PACKAGE_kmod-ath9k-htc depends on PACKAGE_kmod-ath9k-htc
For a resolution refer to Documentation/kbuild/kconfig-language.rst
subsection "Kconfig recursive dependency limitations"



</span></pre>
  </body>
</html>

--------------D87754B86910ACB466E43976--


--===============0494633600269291686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0494633600269291686==--


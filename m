Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2B31748AA
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 19:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GS/TFoZ9n8g3HE1rw0woSHl/FGC6bxVra4AfB06CXJs=; b=D863rbqI6fBUsRu9M719xmKIY
	P0+1PZUktVSRB5DTrEEE6wfepxe6JefbPKlGpJB2eIiXal1Y5/AigjDx6rZg9ldoDX0q3t4pkkrFD
	ZQtGBbUvgR5Kdwbr3qI1TS3DU1mGW33JE5gndLMurD+Sk1fV1f/hEVZhnVfG1tdnlUtau7QilYh/p
	APvR0ga/ULlXK2ooTZwVjaqMLhs5RwLihtG3+HuwYOAqrnra3WTuCvTY8/lJK2FJhvhe8tCXA89pA
	nu1m+McjFwWw6hiWdKuvzAw98RcMEIEY5Mv42OQriSM4DxpDo8s2Z3i/xXZDQZuzYphOgDqoowyps
	yQ2P7ybUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j86p4-000167-6g; Sat, 29 Feb 2020 18:26:46 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j86ow-00015e-3h
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 18:26:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id 4E8C220984;
 Sat, 29 Feb 2020 20:26:27 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp3.welho.com ([IPv6:::ffff:83.102.41.86])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id 94GImObgrzGb; Sat, 29 Feb 2020 20:26:26 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp3.welho.com (Postfix) with ESMTPS id B3D0C2308;
 Sat, 29 Feb 2020 20:26:23 +0200 (EET)
To: openwrt-devel@lists.openwrt.org, mail@aparcar.org
References: <cc57d1d2-51cc-c43f-3cd1-73de5e3429d2@aparcar.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <b035ad00-6de0-f6a7-1110-c06afda6d258@iki.fi>
Date: Sat, 29 Feb 2020 20:26:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101
 Thunderbird/74.0
MIME-Version: 1.0
In-Reply-To: <cc57d1d2-51cc-c43f-3cd1-73de5e3429d2@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_102638_486157_24B636E4 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] ImageBuilder: satisfy_dependencies_for [...] iw
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
Content-Type: multipart/mixed; boundary="===============7946205132094854941=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7946205132094854941==
Content-Type: multipart/alternative;
 boundary="------------49EDE558A9DF0D1DB071B912"

This is a multi-part message in MIME format.
--------------49EDE558A9DF0D1DB071B912
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Paul Spooren wrote at Sat Feb 29 03:55:54 PST 2020
 >
 > for the last few days I get the following error for multiple targets,
 > would it be possible to rerun the snapshot servers to rebuild the
 > package `iw`?
 >
 > $ make manifest PROFILE="devolo_dvl1750e"
 >
 > [...]
 >
 > Collected errors:
 >  * satisfy_dependencies_for: Cannot satisfy the following dependencies
 > for kmod-ath10k-ct:
 >  *     iw

I already mailed Jow today about the issue, as I think that there has been 
something strange going on at the buildbot in the last week. Somebody with 
access to the buildbot and file storage should maybe check things, what is 
happening.


Several packages fail this style:

"Could not generate file hash" or "This does not look like a tar archive" errors.

including also base packages, e.g.  iw, iwinfo, firewall, ...


I am a bit unsure if that has already been fixed or not.

Or if there is a buildslave-specific thing?


E.g iw for mips_24kc:

https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/iw/tiny/compile.txt 


+ curl -f --connect-timeout 20 --retry 5 --location --insecure https://cdn.kernel.org/pub/software/network/iw/iw-5.4.tar.xz
   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                  Dload  Upload   Total   Spent    Left  Speed

   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
   0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
   9  133k    9 13558    0     0   8897      0  0:00:15  0:00:01  0:00:14  8896
100  133k  100  133k    0     0  87627      0  0:00:01  0:00:01 --:--:-- 87621
Could not generate file hash
Makefile:72: recipe for target '/store/buildbot/slave/shared-workdir/build/sdk/dl/iw-5.4.tar.xz' failed
make[3]: *** [/store/buildbot/slave/shared-workdir/build/sdk/dl/iw-5.4.tar.xz] Error 255
time: package/feeds/base/iw/tiny/compile#0.42#0.35#2.80



https://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/

/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/xzcat: /store/buildbot/slave/shared-workdir/build/sdk/dl/libubox-2020-02-27-7da66430.tar.xz: File format not recognized
/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/tar: This does not look like a tar archive
/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/tar: Exiting with failure status due to previous errors


+ curl -f --connect-timeout 20 --retry 5 --location --insecurehttp://www.draisberghof.de/usb_modeswitch/usb-modeswitch-data-20191128.tar.bz2
   % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                  Dload  Upload   Total   Spent    Left  Speed

   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
   0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
   0   287    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0

   0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
100 34069  100 34069    0     0  16432      0  0:00:02  0:00:02 --:--:--  272k
Could not generate file hash
Makefile:31: recipe for target '/store/buildbot/slave/shared-workdir/build/sdk/dl/usb-modeswitch-data-20191128.tar.bz2' failed
make[3]: *** [/store/buildbot/slave/shared-workdir/build/sdk/dl/usb-modeswitch-data-20191128.tar.bz2] Error 255
time: package/feeds/base/usbmode/compile#0.66#0.90#5.59






--------------49EDE558A9DF0D1DB071B912
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Paul Spooren wrote at Sat Feb 29 03:55:54 PST 2020<br>
    &gt; <br>
    &gt; for the last few days I get the following error for multiple
    targets, <br>
    &gt; would it be possible to rerun the snapshot servers to rebuild
    the <br>
    &gt; package `iw`?<br>
    &gt;<br>
    &gt; $ make manifest PROFILE="devolo_dvl1750e"<br>
    &gt;<br>
    &gt; [...]<br>
    &gt;<br>
    &gt; Collected errors:<br>
    &gt;  * satisfy_dependencies_for: Cannot satisfy the following
    dependencies <br>
    &gt; for kmod-ath10k-ct:<br>
    &gt;  *     iw<br>
    <br>
    <p>I already mailed Jow today about the issue, as I think that there
      has been something strange going on at the buildbot in the last
      week. Somebody with access to the buildbot and file storage should
      maybe check things, what is happening.</p>
    <p><br>
    </p>
    Several packages fail this style:
    <p>"Could not generate file hash" or "This does not look like a tar
      archive" errors.<br>
    </p>
    <p>including also base packages, e.g.  iw, iwinfo, firewall, ...</p>
    <p><br>
    </p>
    <p>I am a bit unsure if that has already been fixed or not.</p>
    <p>Or if there is a buildslave-specific thing?<br>
    </p>
    <p><br>
    </p>
    <p>E.g iw for mips_24kc:</p>
    <p><a class="moz-txt-link-freetext" href="https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/iw/tiny/compile.txt">https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/iw/tiny/compile.txt</a>
      <br>
    </p>
    <pre>+ curl -f --connect-timeout 20 --retry 5 --location --insecure <a class="moz-txt-link-freetext" href="https://cdn.kernel.org/pub/software/network/iw/iw-5.4.tar.xz">https://cdn.kernel.org/pub/software/network/iw/iw-5.4.tar.xz</a>
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed

  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
  9  133k    9 13558    0     0   8897      0  0:00:15  0:00:01  0:00:14  8896
100  133k  100  133k    0     0  87627      0  0:00:01  0:00:01 --:--:-- 87621
Could not generate file hash
Makefile:72: recipe for target '/store/buildbot/slave/shared-workdir/build/sdk/dl/iw-5.4.tar.xz' failed
make[3]: *** [/store/buildbot/slave/shared-workdir/build/sdk/dl/iw-5.4.tar.xz] Error 255
time: package/feeds/base/iw/tiny/compile#0.42#0.35#2.80 </pre>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext"
href="https://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/">https://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/</a></p>
    <pre>/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/xzcat: /store/buildbot/slave/shared-workdir/build/sdk/dl/libubox-2020-02-27-7da66430.tar.xz: File format not recognized
/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/tar: This does not look like a tar archive
/store/buildbot/slave/shared-workdir/build/sdk/staging_dir/host/bin/tar: Exiting with failure status due to previous errors

</pre>
    <p><br>
    </p>
    <pre>+ curl -f --connect-timeout 20 --retry 5 --location --insecure <a class="moz-txt-link-freetext" href="http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-data-20191128.tar.bz2">http://www.draisberghof.de/usb_modeswitch/usb-modeswitch-data-20191128.tar.bz2</a>
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed

  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0   287    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0

  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
100 34069  100 34069    0     0  16432      0  0:00:02  0:00:02 --:--:--  272k
Could not generate file hash
Makefile:31: recipe for target '/store/buildbot/slave/shared-workdir/build/sdk/dl/usb-modeswitch-data-20191128.tar.bz2' failed
make[3]: *** [/store/buildbot/slave/shared-workdir/build/sdk/dl/usb-modeswitch-data-20191128.tar.bz2] Error 255
time: package/feeds/base/usbmode/compile#0.66#0.90#5.59





</pre>
  </body>
</html>

--------------49EDE558A9DF0D1DB071B912--


--===============7946205132094854941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7946205132094854941==--


Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C5BB80BE
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 20:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NBpPHQHkKlY0uwlOLmu41Bi3FsVoaHGtM0Ces0VivpU=; b=jihde1HXKKAeS/qaUd8/RBQWx
	L78HyQNcqIPF2d1cck5lHpGZIuf8Jvqi87LdNQeghant3AXM6YpgVlbdooDQF7XfeMi/WyOULSGb0
	1DbiQ86hTEPxNAnGF9igvmxTIs/Z7st8iKO5f1yR7VU1LiAZ+udOP1zfyTC5Qyu2iAeS/RY5ytIPl
	Xgk2CWZcFTi8Gn8JRAJPvXd5vN2EnZ/fVm6xfzf3hWyIH2Cyc2Yz0+LsrWUm2E5EaXNw/7j4jpYAk
	pX0Imji7oNGgS8x0tJyS9n+aFGUI6UKdu97hHXQ0Ch6I3WPu5vNnwzLKbw38ypRHMFMN5tucLqipW
	CDsAmMN/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB15s-0002BN-Tn; Thu, 19 Sep 2019 18:23:53 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB111-0000Zm-HT
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 18:18:56 +0000
Received: by mail-ed1-x531.google.com with SMTP id p10so4076788edq.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Sep 2019 11:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=u3u3N811V4xb9XFocN3utCc4fyRtWC843PhHCqCdN+Y=;
 b=W3HSBtvgtxXkFKldRezNyMfjj38uTyTUpLKSKmToiCT54eMmn1HLzutb+1VDBz7k1T
 sc+tOHYsIyrh/bjLZ7Ne73uP8gndcOwk4arbvtYkfDof1ned7/u96IMEgTuF+ZRhviiY
 QviIkB7fL71IRLQbmDzq/zJwyFbDByp1yRhu+48FGLnaUqHRKd53idzO2WIP9nUCQDjp
 tAI7Q/FPHXC0ZT1D8176rrwzrr7P9I1+DbEKwo/wiAapf+6hynj1qdOeDFlmQ6U3ZvR0
 JHj0ahTc6lSI3Vljqb4Wu6DZ2QM8PMbjAgh0c1bCrLatB934+V8ouPtg2jQosvzifq4R
 h7Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=u3u3N811V4xb9XFocN3utCc4fyRtWC843PhHCqCdN+Y=;
 b=aLIDxNZIUt4JvbNEb2NxQEwQdT7Yj1zhOaNl3u7rdYhYRx/ItKEbLUpVqwBglgnvuf
 /JWV4WerOgrND4ou50yN6uLHDoq1h93qygpkoPjSe+wbzpEPlpwY7Qwj6IpEaepIK/e6
 BloOITiw4ghU3VyeOt9Bk4L/NUypesGawMoieI1zJtZYYxReq19GtDukxzV6Ey/HEnsc
 sT4SOz4bZ3bt7wfEcDMmQLKTnYP0uoAmHy7G44XHFIdW1FSuRHDU2uMpzfCc4grTSfsY
 uiF557H6nlZROIArKFUdLxTOP4ivUXhw/COWNkTGtYkDC0DnR9g7IXT6zdpfYxysa8lM
 7r9w==
X-Gm-Message-State: APjAAAVa0qN+NApPbEMXANVCaLAGSG0SJC+IhBqSXDk71IGc3v8MCU/d
 VWv7XJrG+113VzeDsh6D5ak=
X-Google-Smtp-Source: APXvYqx18VUwq4ZzGfzozh1aB5Mu6sivSeXe2eXf6WreYxC3W1wcnwVZpw07MmhDmJ+SJQ96zrejRQ==
X-Received: by 2002:a17:906:53da:: with SMTP id
 p26mr4684781ejo.66.1568917128366; 
 Thu, 19 Sep 2019 11:18:48 -0700 (PDT)
Received: from aarau.fritz.box ([81.221.232.148])
 by smtp.gmail.com with ESMTPSA id i7sm1756784edk.42.2019.09.19.11.18.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 11:18:47 -0700 (PDT)
From: =?utf-8?Q?Ivan_H=C3=B6rler?= <ivanhoerler@gmail.com>
Message-Id: <7782BA0C-B382-4FD7-AF93-F1A593A03DE0@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Thu, 19 Sep 2019 20:18:46 +0200
In-Reply-To: <28C6B2C7-E05E-4894-AA5C-6751E4FE75A9@gmail.com>
To: blogic@openwrt.org
References: <E13870CE-5B7E-4D77-A9AB-C566D6FCA7FF@gmail.com>
 <20190915204615.GB1338@makrotopia.org>
 <28C6B2C7-E05E-4894-AA5C-6751E4FE75A9@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_111853_498392_822E2C42 
X-CRM114-Status: UNSURE (   5.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ivanhoerler[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688
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
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============1049029989711037593=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1049029989711037593==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_19591B9B-8B33-451B-A23D-17B98E2736B0"


--Apple-Mail=_19591B9B-8B33-451B-A23D-17B98E2736B0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi
I have problems makeing libmraa working on Linkit Smart 7688.
The installation worked without problems and i tested with a python =
script. See details below:

what i did:=20
- Compiled a openWRT 18.6
- opkg update=20
- opkg install libmraa
- opkg install python3-light
- opkg install libmraa-python3

- copied this skript to /root:=20

import mraa
import time

try:
    print (mraa.getVersion())
except:
    print("no mraa available")

# Refer to the pin-out digram for the GPIO number to silk print mapping
# in this example the number 44 maps to Wi-Fi LED.
pin =3D mraa.Gpio(2)
pin.dir(mraa.DIR_OUT)
while True:
    pin.write(1)
    time.sleep(1)
    pin.write(0)
    time.sleep(1)

- and executed:
root@OpenWrt:~# python3 mraa-test-simple.py=20
v2.0.0
Traceback (most recent call last):
  File "mraa-test-simple.py", line 11, in <module>
    pin =3D mraa.Gpio(2)
  File "/usr/lib/python3.7/site-packages/mraa.py", line 391, in __init__
    _mraa.Gpio_swiginit(self, _mraa.new_Gpio(pin, owner, raw))
ValueError: Invalid GPIO pin specified


- checked with a LED on pin2 like this if GPIO2 works:
root@OpenWrt:~# cd /sys/class/gpio/
root@OpenWrt:/sys/class/gpio# ls
export      gpiochip0   gpiochip32  gpiochip64  unexport
root@OpenWrt:/sys/class/gpio# echo 2 > export
root@OpenWrt:/sys/class/gpio# ls
export      gpio2       gpiochip0   gpiochip32  gpiochip64  unexport
root@OpenWrt:/sys/class/gpio# cd gpio2
=
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo "out" > direction
=
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# cat value
0
=
root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gpio/gpiochip=
0/gpio/gpio2# echo 1 > value

- redone previous step with no changes in error output.

what am i missing?

Thanks for comments, Ivan H=C3=B6rler=

--Apple-Mail=_19591B9B-8B33-451B-A23D-17B98E2736B0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div>Hi</div><div>I have problems makeing libmraa working on =
Linkit Smart 7688.</div><div>The installation worked without problems =
and i tested with a python script. See details below:</div><div><br =
class=3D""></div><div>what i did:&nbsp;</div><div>- Compiled a openWRT =
18.6</div><div>- opkg update&nbsp;</div><div>- opkg install =
libmraa</div><div>- opkg install python3-light</div><div>- opkg install =
libmraa-python3</div><br class=3D""><div class=3D"">- copied this skript =
to /root:&nbsp;</div><div class=3D""><br class=3D""></div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D""><div class=3D"">import mraa</div></div><div class=3D""><div =
class=3D"">import time</div></div><div class=3D""><div class=3D""><br =
class=3D""></div></div><div class=3D""><div =
class=3D"">try:</div></div><div class=3D""><div class=3D"">&nbsp; &nbsp; =
print (mraa.getVersion())</div></div><div class=3D""><div =
class=3D"">except:</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; print("no mraa available")</div></div><div class=3D""><div =
class=3D""><br class=3D""></div></div><div class=3D""><div class=3D""># =
Refer to the pin-out digram for the GPIO number to silk print =
mapping</div></div><div class=3D""><div class=3D""># in this example the =
number 44 maps to Wi-Fi LED.</div></div><div class=3D""><div =
class=3D"">pin =3D mraa.Gpio(2)</div></div><div class=3D""><div =
class=3D"">pin.dir(mraa.DIR_OUT)</div></div><div class=3D""><div =
class=3D"">while True:</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; pin.write(1)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; time.sleep(1)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; pin.write(0)</div></div><div class=3D""><div class=3D"">&nbsp; =
&nbsp; time.sleep(1)</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">- and executed:</div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D""><div class=3D"">root@OpenWrt:~# python3 =
mraa-test-simple.py&nbsp;</div></div><div class=3D""><div =
class=3D"">v2.0.0</div></div><div class=3D""><div class=3D"">Traceback =
(most recent call last):</div></div><div class=3D""><div class=3D"">&nbsp;=
 File "mraa-test-simple.py", line 11, in &lt;module&gt;</div></div><div =
class=3D""><div class=3D"">&nbsp; &nbsp; pin =3D =
mraa.Gpio(2)</div></div><div class=3D""><div class=3D"">&nbsp; File =
"/usr/lib/python3.7/site-packages/mraa.py", line 391, in =
__init__</div></div><div class=3D""><div class=3D"">&nbsp; &nbsp; =
_mraa.Gpio_swiginit(self, _mraa.new_Gpio(pin, owner, =
raw))</div></div><div class=3D""><div class=3D"">ValueError: Invalid =
GPIO pin specified</div></div><div class=3D""><br =
class=3D""></div></blockquote><br class=3D""><div class=3D"">- checked =
with a LED on pin2 like this if GPIO2 works:</div><blockquote =
style=3D"margin: 0 0 0 40px; border: none; padding: 0px;" class=3D""><div =
class=3D""><div class=3D"">root@OpenWrt:~# cd /sys/class/gpio/</div><div =
class=3D"">root@OpenWrt:/sys/class/gpio# ls</div><div class=3D"">export =
&nbsp; &nbsp; &nbsp;gpiochip0 &nbsp; gpiochip32 &nbsp;gpiochip64 =
&nbsp;unexport</div><div class=3D"">root@OpenWrt:/sys/class/gpio# echo 2 =
&gt; export</div><div class=3D"">root@OpenWrt:/sys/class/gpio# =
ls</div><div class=3D"">export &nbsp; &nbsp; &nbsp;gpio2 &nbsp; &nbsp; =
&nbsp; gpiochip0 &nbsp; gpiochip32 &nbsp;gpiochip64 =
&nbsp;unexport</div><div class=3D"">root@OpenWrt:/sys/class/gpio# cd =
gpio2</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# echo "out" &gt; direction</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# cat value</div><div class=3D"">0</div><div =
class=3D"">root@OpenWrt:/sys/devices/platform/10000000.palmbus/10000600.gp=
io/gpiochip0/gpio/gpio2# echo 1 &gt; value</div></div><div class=3D""><br =
class=3D""></div></blockquote>- redone previous step with no changes in =
error output.<div class=3D""><br class=3D""></div><div class=3D"">what =
am i missing?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for comments, Ivan H=C3=B6rler</div></body></html>=

--Apple-Mail=_19591B9B-8B33-451B-A23D-17B98E2736B0--


--===============1049029989711037593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1049029989711037593==--


Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE34E1F6BA5
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 17:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZIZWytqYwolWdDzFQJaI061VYG4alGvTftOc5Apyw2A=; b=nqUhwWTSNQ8VpY
	giemBmBsi4ZztQqH/Cmm+M7CUhF5VqnKZZyhd6xWkVBC4uuwcU7/swj5XDTQhUQg7yubT607MFx3E
	/0eAkDsN4ACZKGa4zSeYKkSsUHu8Ya77SfQBVQcJT4mSHigC5rc6z5FEbp9O9TZRS9g/vuWv348wR
	nHhpe6mhA0El9uEj7eJU7MpXl3H3D1h2SYZ8bLBd1GRjdSiRO00/BLSZl/9+cC3fCUxVKECyLGaGl
	pBH7/4GC8yPZ/VvRaPMGuxELpqrDkAF86zrVw1y+xOIf2lIjvp6zpSAkYafy7cIjstjvuHT54YXMU
	ZOgda/yIoiiqWat0Pmnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPXB-000558-CY; Thu, 11 Jun 2020 15:54:29 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPX4-00054Y-6q
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 15:54:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591890858;
 bh=vkk+hYixEb8PvkwdbJSFdYKWvecnSgro2Zn0NJF65z8=;
 h=X-UI-Sender-Class:From:Subject:To:Date;
 b=I5KyOCGCTFuzY9NfThCLmhRTHgi8iJ4ks6jnEMxMuQOz6DftKR1OfnydclKy/x9Nn
 VdM0DwfIA/HvN/5QKHOyr8PbzXXqmbcOuzToDi3sOpDYr7VRB45Wjtjm5MisXKbNZV
 sElSH0JjbrChPxx0BQheY+HMORzBqsi/RBRB9N3w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from neuromancer.freeside ([176.222.228.221]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MK3Rm-1jUVJE1slS-00LVEz for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jun
 2020 17:54:18 +0200
From: =?UTF-8?Q?Martin_Mat=c4=9bjek?= <martin.matejek@gmx.com>
To: openwrt-devel@lists.openwrt.org
Autocrypt: addr=martin.matejek@gmx.com; prefer-encrypt=mutual; keydata=
 mQINBFtXJeoBEADdHJDy8Z9K5IsULxYyF6SJ2FVshyo7k8NJ/uFBKlZBYN/NWd5c2vUUaAVy
 dwDybQwP29kL/AicOS6AbykGwCB7lXqKAXj48wckwu76hD5RwAPo+iV4GTI+UectzWrvUSXv
 vjVvLepcFOjf6A5RUKxk2IIVAzu9OdCgAkGv0KSicheyONt/XshFznpDnfoqxDD4oqokehnx
 4n8UqwWf5qJuR735IyWqLcG4rtM5gBBisBVaWonS/UxrYAq109jOz9qPXwlBBae+bvCyM0zk
 QeGXPCbxRQI+RrByC7Ike+1BwsBkPXOjhU2wkiwmKSiDCeDNMO8CIGBe2AUrHprytgMfcWGh
 R/RsG4MVoMOvSmfJ1+zjb0lwBMpmiNqm69WJ5jPLGtyIZxwqebne0uxavTzBTO1O9UBoz0Un
 hFGKPLCXXMvlVqk8m/evMvN0+LSbNPdPhGLRZTlGtdvOiM2XeKFWDO8XwtP6Ur0kUclyUA+v
 LQw3rSmpNawsyen+0PsqYsGTrW2qWhnHH2Myi+xkZRWc5Z2T8mA5w5JzjD5hoBhDuUGXqEmf
 jnM0bzCkV4zub1TMry9W13v4TG3iylZsNicFO8QMwNrbDGNKVnj9sIT68C1h+Z0OOmkOWPDW
 DPIcI5OU6Iy7+S+F1M5D2OAkOM+6DvvcNc6y7WWc9vIU5lzg8wARAQABtChNYXJ0aW4gTWF0
 xJtqZWsgPG1hcnRpbi5tYXRlamVrQGdteC5jb20+iQJUBBMBCAA+FiEEcF0OGH/161rthk9i
 mYA3JcJoNQEFAl23thQCGyMFCQPCZwAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQmYA3
 JcJoNQFLkBAA0cgAVb5gMpiKHp/ItrQ7pH+I65v83nTqxRHM/o6VmwUHjon7//QDYTyiuYWA
 sX7M5rD8JwvfrUiXL4xn49hNw8eivv4L9eSn10rILw5IJXrZ0znomVjk4AhqZ+g0BXxw5L3J
 k1ekBDriwaUuMvDpsLU+Qc3Gzzm+tjMB1hydvJYfFV1phHlYjv6OY/2QBohuc7JdbDLFB5HV
 nUcrFYBgqjzjt78L8/X3SfVB5vFp7B7Pj/a3ufj1jyDKko7evhC2eA8cHOpAo37NEi3anA++
 I8hmYdwignTKyKcNdsHYlLUI5i30jNQXUVQmxxHEHGd831kPJ5I6sdMnyl+y7o+z2qDMTN4u
 Pdd2o4raRng4e0JOk8uqJMODPAmOgpUyev+T8b5JE8xy6hZ5YL7ZOULXoukAI9WKq12M81HV
 mCqf0naHscqD2uYZ6Leiv+C/QxLQUW+bdFI2/Q1xpZuT5sknQaRON1QU2kWOlg0JDe2pHRCv
 p9hnK3j561rvPIwdiUXqtXSCSnpJWA0NhifHO5TypsN0Fz0EUYsY/lDHPaNJBVqU24PaYuC8
 ez3oYSzVfNBP70kGA4PDTCZCPOzmlxr757fpY7K7EQJSAC31N27YeSHrhmwz8cvvIoUYiAZO
 tq9Ir7ceF5afC8mQgMcFJXdkRPMfvHv35ZbC5BF7ns+Dsl65Ag0EW1cl6gEQAMfxnQSHNHDo
 b9X6EI9inN31++yqP9efs7WzLn+GtzMSmD41JfX9mszM5QHNK+opLdO9cv6Am9lOR8BnMM4y
 07XB5dHgWD1FRI011nbeE3YpJU7yP4sAD4/k2uPAhZBgClx/svGXFVcdjSCeGjiU5CxytXNb
 tY+r4ZxKnpmA1nkHyHcjZOQB5KAE7Lw3b5aDCUI7BMaIvfJmep2gtwn2jUDylSrsbN7cTW2c
 5qo9QJeCG9Q9m/YbbCJsvtQ1emNarHa4xyQ3d7dIgh02r1AJZ3fuvu2uWF+Me1DF3+ypfh3i
 N3EkFXDFKWncLvJ8EzJvJoGFtaaZ2Z4QinEj4nAQEuiongIMH7A+JZelO+gbNAPaaxDeg/eO
 XnokP5HHIXAgVNkavlyrI/+FUyJgOoDLKWkV1abxjejWPTrOBQCmQ+UG6KeXDhjEUCACF1KL
 QeeCiKUSt6SGlCXoLeNOXMzvyo6SbaNkBazHYVpYoOX9QfnvRipRNzd6IgsMakDLdzopvcVg
 wDzR5JWuZMO8pBjx79IVqTLdPXbNQK/CmpXQXkGMgF/yvVjhibp21flg9PWpCO9m2eDPnNHd
 aza3Zd5xKmkbGF8glcva3+Q4aH4zOLHyMgDZxnRcUpVfJ9fLyJF1vMtzlDIgYqkLJUtqPL9o
 wer8tKnHVwOOTknmmlOdAjhHABEBAAGJAjwEGAEIACYWIQRwXQ4Yf/XrWu2GT2KZgDclwmg1
 AQUCW1cl6gIbDAUJA8JnAAAKCRCZgDclwmg1AeLsEACRUqQDH4pDswNB1mK6/br8af8oRXSq
 luAya43R3ysxp53g2Y5Yc3xisWvTS8KGqDT7AoAxVGNf4iTy+bIAwWvGBIYVenGCLspewSI6
 Aabmg01p5KFXvVS7kV2Z2OFOpkuCkuJm7key8AMowYIyIQd3hd2I4jzxc1ZgJpi5x4/6v9TY
 KPbG6eMtrXrCRBYSB3Jk/8ezlheBkEOpChZW8Clf0yXpqIUeJU+guZ0Ec75M1NzHtdQDAfwb
 q/fnFt1LeGQxVlhFhnW//E+6GRbDfVlbRR0kUw6j6wVmV/mBDkbSYeDpNkA44fpzhIo0Op2h
 PlnDvPcJfoO9PKJFTcm2C/gaUMCfihewGxwX+VLIE+R0vgcrClVlgERVDhTxpEUAjGbqHdye
 wkpMVloO8XI9TiXDcMLW+dlDEzht+dMoOwiy0jLjQtl/Wg4HaASBYKilNEPddFa0unubA+FP
 M3hdnhQS91CAq422+6Jrs1dn76fxcCKKPg8WG75tSAMCi7hbT2/Z2QB2y+JzjH1bSL+tpGwG
 tT4tbsEUX05+QSr/M/J46PhEpO66MEW5kMWKhe70hYPjqMi4HMu4l+GSAtNY2p16WNKSnVdC
 XHu4V2qzAQajez3w45w27a/pC9RjmCGE5H4AnJdfq7X7tIcin8uLTi+yPTjm+npRteR7YyJM
 mrjeQQ==
Message-ID: <7d10cda7-4504-a8e2-7574-074e95f0d78f@gmx.com>
Date: Thu, 11 Jun 2020 17:55:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
Content-Language: cs
X-Provags-ID: V03:K1:FfgjoxsenKPmnLUawvU0Q67Gqta3OxmQ8RB2D2onK1nSJ+3L67u
 0CV/wNHj3Tm0bK1+vUhHA8JjW01EaAyaveY/KI1facPo0Q9fzKQmf68Wa/EUjp+FtNmR+7+
 xyaZnke+OVJJGBPgBFooPtyPaJZsRrsdIpPstUbtMScxD5CbK8W1vlhW6Aj1Tzd7lZsFYW3
 7z+2NCB1L63L6m/cq9NEA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FYUua0B+Dfs=:D25pKVzWyjevclx+6Q8k/c
 V+6RlvVP8Tlyb/fJXyahyUkpc35/NiSD2uqEIbZUTfNtuOvhTK2zsewhiT8OkdTVgom37hjr9
 HipCTepEfVVF6hLnOmhIVr09VIBPJN+Ayfvut5p2YeStBvvyWAYGR+niP3z4gN6Igh5XbSf2j
 PJo05affuFabQB4QzOL7nZB7DL5ohD8C/CgA8s3+Aaf0viQrx2fr8UK11WYuZr5yBr9wwGmL0
 cQIt8sSIzkLpswqtTTJydSNEHX15aQ1caNsY9GSEj/64DlYhIgajVM/7C/9D+509lvn0Xa+Ew
 qxUug6Xfbj4DdMYH6K4LbTO6ZfiTXOzhjJ4h8h1rhZ/LdB8j44dRwXDEAl5LguezMW2qgLhpf
 8gy16MXW/a2BrAZPSIvWjBffSa+pjzpZCpR0TwBdwXkLrlfc9fnt6ueP+ds1Yk/TGF3WCQgVH
 FyxnlTmjUANzD2MoWUPDw3TiLLpdSpDHTWzhVMhHTDgFquvShAUwuPjwDDgtDgacffo1zmsL9
 FyarQ4KU+J8qw4wdqFsBchVIjr5y+ui/Z9rxByj+JAGVF4m2LuM+ucvNhABlpUGQ0v0wkWmb7
 jtE0QeZHuPvS0Y5aTlJgSVSIyuAm3GX5wMPxZPdHB49dkoco0DnDeOZ/6P1NhM/mK8c1Af+Az
 0Cau8a1MKybTnj4V3lsePokyX+ew5JDXvoi8g1RsEiidhlBCxi4QM0Pkl/WuAmA5/pkFNM3xv
 ZwW58yUdl9eL2KbfoIP1mQQKjomfvfdAENeNk5JWecPQKzcHrn/YTLIVaLa0zEgXeohKcUSoQ
 z6m5qvyZ03tu95eKf55yYpFMfKwtq3sfVYwoCdAfc3u2HvtlGAVo+NOShCS7z4RfdJqHe5v9T
 Ywtgzjel1Kx1ftx1jcPSZY5Xeft7LQuaVhUdXiw7oA+L06Ezuj9S5MGiyTsTK1tewVNm4p+5U
 z3pMtppyq0Tvf96bEU5gQNAs+73BpegnBykvyXnv48kgtYrjfzOFuqz22kKEIK6Y4mtSG1tnh
 rLegpEPw/+ODkv46LzIidUWselakm8u9Bd9EKGl91rHiW5DodHKsmSGNJgesus3dURIY5fPsk
 rnhbcwte5WgJVfSmGik4mGLnemfqnVfdNaef46g0JiLW8IbR2Oyn2YFiwM49Fqve2lSONzWcF
 +3WTWHIPaPchw7HBdo5wfNMMGYRZv4/L2pUpr32nYHTzO84JblRnb3gtjDvkBsj5Bco5a3cEL
 Qr+FncBTSpw/exvlA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_085422_540348_4EE1B211 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.matejek[at]gmx.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] iwinfo: DFS channels are not listed
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

Hi,

DFS channels are not marked as DFS, even though iw will detect that just
fine.

Getting frequencies list through ubus/iwinfo will result in this output

# iwinfo wlan0 freqlist
  2.412 GHz (Channel 1)
  2.417 GHz (Channel 2)
  2.422 GHz (Channel 3)
  2.427 GHz (Channel 4)
  2.432 GHz (Channel 5)
  2.437 GHz (Channel 6)
  2.442 GHz (Channel 7)
  2.447 GHz (Channel 8)
  2.452 GHz (Channel 9)
  2.457 GHz (Channel 10)
  2.462 GHz (Channel 11)
  5.180 GHz (Channel 36)
  5.200 GHz (Channel 40)
  5.220 GHz (Channel 44)
  5.240 GHz (Channel 48)
  5.260 GHz (Channel 52)
  5.280 GHz (Channel 56)
  5.300 GHz (Channel 60)
  5.320 GHz (Channel 64)
  5.500 GHz (Channel 100)
  5.520 GHz (Channel 104)
  5.540 GHz (Channel 108)
  5.560 GHz (Channel 112)
  5.580 GHz (Channel 116)
  5.600 GHz (Channel 120)
  5.620 GHz (Channel 124)
  5.640 GHz (Channel 128)
  5.660 GHz (Channel 132)
  5.680 GHz (Channel 136)
  5.700 GHz (Channel 140)
  5.720 GHz (Channel 144)
  5.745 GHz (Channel 149)
  5.765 GHz (Channel 153)
  5.785 GHz (Channel 157)
  5.805 GHz (Channel 161)
  5.825 GHz (Channel 165)

However iw will correctly return DFS flags

# iw list

Frequencies:
 * 5180 MHz [36] (23.0 dBm)
 * 5200 MHz [40] (23.0 dBm)
 * 5220 MHz [44] (23.0 dBm)
 * 5240 MHz [48] (23.0 dBm)
 * 5260 MHz [52] (23.0 dBm) (radar detection)
 * 5280 MHz [56] (23.0 dBm) (radar detection)
 * 5300 MHz [60] (23.0 dBm) (radar detection)
 * 5320 MHz [64] (23.0 dBm) (radar detection)
 * 5500 MHz [100] (23.0 dBm) (radar detection)
 * 5520 MHz [104] (23.0 dBm) (radar detection)
 * 5540 MHz [108] (23.0 dBm) (radar detection)
 * 5560 MHz [112] (23.0 dBm) (radar detection)
 * 5580 MHz [116] (23.0 dBm) (radar detection)
 * 5600 MHz [120] (23.0 dBm) (radar detection)
 * 5620 MHz [124] (23.0 dBm) (radar detection)
 * 5640 MHz [128] (23.0 dBm) (radar detection)
 * 5660 MHz [132] (23.0 dBm) (radar detection)
 * 5680 MHz [136] (23.0 dBm) (radar detection)
 * 5700 MHz [140] (23.0 dBm) (radar detection)
 * 5720 MHz [144] (23.0 dBm) (radar detection)
 * 5745 MHz [149] (30.0 dBm)
 * 5765 MHz [153] (30.0 dBm)
 * 5785 MHz [157] (30.0 dBm)
 * 5805 MHz [161] (30.0 dBm)
 * 5825 MHz [165] (30.0 dBm)
 * 5845 MHz [169] (disabled)
 * 5865 MHz [173] (disabled)

This is probably due to certain condition in iwinfo/src/iwinfo_nl80211.c
line 2757

e->restricted = (
	freqs[NL80211_FREQUENCY_ATTR_NO_IR] &&
	!freqs[NL80211_FREQUENCY_ATTR_RADAR]
) ? 1 : 0;


I'm not entirely sure what restricted is supposed to mean in this context.
Perhaps it could be handy to add radar boolean flag (or something
similar) to struct iwinfo_freqlist_entry, that would be independent of
NL80211_FREQUENCY_ATTR_NO_IR.
That would of course mean breaking/extending ABI and I'm not sure if
that won't break other code as well.

I have already prepared such changes and I can send a patch, but I would
like to know first if this is the correct way to address this.

Regards
Martin

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
